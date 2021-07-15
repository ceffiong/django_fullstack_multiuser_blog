from django.shortcuts import render, redirect
from .forms import SigninForm, SignupForm
from django.contrib import messages
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from django.http import JsonResponse
from .models import UserBio, UserAvatar, UserSocial
from .forms import UserAvatarForm, ChangePasswordForm, UserSocialForm

from django.contrib.auth import authenticate, login, logout, update_session_auth_hash

import json


# Create your views here.

'''
Method to handle (a) Signup form display - GET (b) Signup user - POST
'''
def sign_up(request):
    if not request.user.is_authenticated:
        if request.method == 'GET':
            # Create signup form
            #signup_form = SignupForm()
            signup_form = SignupForm()
            return render(request, 'users/signup.html', {"form": signup_form, 'is_error': False})

        elif request.method == 'POST':
            signup_form = SignupForm(request.POST)
            if signup_form.is_valid():
                signup_form.save()

                # Create default UserAvatar and UserBio and UserSocial
                username = signup_form.cleaned_data.get('username')
                user = User.objects.get(username=username)
                bio = UserBio(user=user, bio="You haven't included your bio. Click edit to update your profile")
                bio.save()

                social = UserSocial(user=user, linkedin="https://www.linkedin.com/in/demo/", twitter="https://twitter.com/demo", youtube="https://www.youtube.com/channel/demo", github="https://github.com/demo")
                social.save()

                avatar = UserAvatar(user=user, avatar="user_cover_images/default.png")
                avatar.save()


                # send a flash message
                first_name = signup_form.cleaned_data.get('first_name')
                messages.success(request, first_name + ', Your account was successfully created! Please Sign-in to continue.')
                # redirect to sign in page
                return redirect('signin')

            else:
                # pass the error to the user
                return render(request, 'users/signup.html', {"form": signup_form, 'is_error': True})

    else:
        # redirect loggedin users
        return redirect('all-articles')

'''
Method to log in user (POST)
'''

def sign_in(request):
    if not request.user.is_authenticated:
        if request.method == 'GET':
            # create the signin form
            signin_form = SigninForm()
            return render(request, 'users/signin.html', {"form": signin_form, 'is_error': False})
        elif request.method == 'POST':
            signin_form = SigninForm(data=request.POST)
            if signin_form.is_valid():
                username = request.POST.get('username')
                password = request.POST.get('password')

                user = authenticate(request, username=username, password=password)
                if user is not None:
                    login(request, user)

                    # Go to user page after login
                    return redirect('profile', user)
                else:
                    return render(request, 'users/signin.html', {"form": signin_form, 'is_error': True})
            else:
                return render(request, 'users/signin.html', {"form": signin_form, 'is_error': True})
    else:
        return redirect('all-articles')


@login_required(login_url='signin')
def change_password(request, username):
    if request.method == 'GET':
        try:
            form = ChangePasswordForm()
            user = User.objects.get(username=username)
            return render(request, 'users/change_password.html', {
                "user": user,
                "form": form
            })

        except Exception as exc:
            print(exc)
            return render(request, 'users/change_password.html', {
                "user": {}
            })
    elif request.method == 'POST':
        try:
            user = User.objects.get(username=username)
            change_password_form = ChangePasswordForm(request.POST)
            if change_password_form.is_valid():
                user.save()
                update_session_auth_hash(request, user)
                messages.success(request, 'Your password was successfully updated!')
                return redirect('change-password', user)

            else:
                messages.error(request, "Your passwords do not match.")
                return redirect('change-password', user)

        except Exception as exc:
            messages.error("Cannot change password. Ensure that your password matches")
            return redirect('change-password', user)



@login_required(login_url='signin')
def sign_out(request):
    messages.success(request, 'You are logged out. Please login to continue.')
    logout(request)
    return redirect('signin')


'''
1. Get user profile -> GET request
2. Update Avatar
3. Update User profile (fname, lname etc)
'''
def profile(request, username):
    avatar_form = UserAvatarForm()
    social_form = UserSocialForm()

    if request.method == 'GET':
        try:
            user = User.objects.get(username=username)
            return render(request, 'users/profile.html', {
                "user": user,
                "form": avatar_form,
                "social": social_form
            })

        except Exception as exc:
            print(exc)
            return render(request, 'users/profile.html', {
                "user": {}
            })

    elif request.method == 'POST': # Edit avatar
        try:
            user_form = UserAvatarForm(request.POST, request.FILES)
            user = User.objects.get(username=username)
            avatar_form = UserAvatarForm()
            if user_form.is_valid():

                # Change the default image
                user_avatar_obj = UserAvatar.objects.get(user=request.user)
                user_avatar_obj.avatar = user_form.cleaned_data['avatar']
                user_avatar_obj.save()

                return render(request, 'users/profile.html', {"user": user, "form": avatar_form, "social": social_form})

            else:
                # Create article form
                messages.error(request, 'Form is Invalid')
                return render(request, 'users/profile.html', {"form": avatar_form, "user": user})

        except Exception as exc:
            messages.error(request, 'Could not update avatar')
            print(exc)
            return render(request, 'users/profile.html', {"form": avatar_form, "user": user})


    elif request.method == 'PUT' and request.is_ajax:
        first_name = json.loads(request.body)["first_name"]
        last_name = json.loads(request.body)["last_name"]
        bio = json.loads(request.body)["bio"]
        email = json.loads(request.body)["email"]


        try:
            # check if email exist for some other user (I dont want duplicate emails
            user = User.objects.get(email=email)
            if user == request.user:
                # Get user
                user = User.objects.get(username=username)
                user.first_name = first_name
                user.last_name = last_name

                user.save()

                user_bio = UserBio.objects.get(user=user)
                user_bio.bio = bio
                user_bio.save()

                # send to client side.

            else:
                return JsonResponse({"error": "Email already exist for a different account. Please select another email"}, status=400)

        except Exception as exc:
            return JsonResponse({"error": "Unable to update user. Please try again later"}, status=400)

    return render(request, 'users/profile.html')

'''
1. Ajax request for handling cases where user cancels edit-profile (GET the current record from db)
2. Ajax request for updating the socials
'''

def edit_profile(request, username):
    if request.method == 'GET' and request.is_ajax:
        try:
            # Get article and comment
            user = User.objects.get(username=username)

            user_bio = user.userbio.bio
            return JsonResponse({"first_name": user.first_name, "last_name": user.last_name, "bio": user_bio, "email": user.email},status=200)

        except Exception as exc:
            return JsonResponse({"error": "Unable to cancel update profile. Please try again later"}, status=400)
    elif request.method == 'POST' and request.is_ajax:
        try:
            social_from = UserSocialForm(request.POST)
            if social_from.is_valid():
                # get form data
                linkedin = social_from.cleaned_data['linkedin']
                youtube = social_from.cleaned_data['youtube']
                github = social_from.cleaned_data['github']
                twitter = social_from.cleaned_data['twitter']

                user = User.objects.get(username=username)
                user_social = UserSocial.objects.get(user=user)

                # set default is fields are blanck
                if linkedin is not None:
                    user_social.linkedin = linkedin
                else:
                    user_social.linkedin = "https://www.linkedin.com/in/demo/"

                if youtube is not None:
                    user_social.youtube = youtube
                else:
                    user_social.youtube = "https://www.youtube.com/channel/demo"

                if github is not None:
                    user_social.github = github
                else:
                    user_social.github = "https://github.com/demo"

                if twitter is not None:
                    user_social.twitter = twitter
                else:
                    user_social.twitter = "https://twitter.com/demo"

                user_social.save()

                social = UserSocial.objects.get(user=user)


                return JsonResponse({"linkedin": social.linkedin, "youtube": social.youtube, "twitter": social.twitter,
                                     "github": social.github}, status=200)

            else:
                return JsonResponse({"error": "Please enter valid URL for all fields. Example: https://www.linkedin.com/in/demo/"}, status=400)

        except Exception as exc:
            print(exc)
            return JsonResponse({"error": "Unknown request error!"}, status=400)





