from django import forms
from django.forms import TextInput, PasswordInput, EmailInput, FileInput, Textarea
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.models import User
from .models import UserAvatar, UserBio, UserSocial




'''
Create signup form
'''

class SignupForm(UserCreationForm):
    class Meta:
        model = User
        labels = {'username': '', 'first_name': '', 'last_name': '', 'email': '', 'password1': '', 'password2': ''}
        fields = ['username', 'first_name', 'last_name', 'email', 'password1', 'password2']
        widgets = {
            'first_name': TextInput(attrs={'class': 'form-control', 'required': True}),
            'last_name': TextInput(attrs={'class': 'form-control', 'required': True}),
            'email': EmailInput(attrs={'class': 'form-control', 'required': True}),
            'password1': PasswordInput(attrs={'class': 'form-control'}),
            'password2': PasswordInput(attrs={'class': 'form-control'})
        }

    def __init__(self, *args, **kwargs):
        super(SignupForm, self).__init__(*args, **kwargs)
        self.fields['password1'].widget.attrs['class'] = 'form-control'
        self.fields['password2'].widget.attrs['class'] = 'form-control'
        self.fields['username'].widget.attrs['class'] = 'form-control'
'''
Create Sign-in form
'''

class SigninForm(AuthenticationForm):
    class Meta:
        model = User
        labels = {'username': '', 'password': ''}
        fields = ['password', 'password']

    def __init__(self, *args, **kwargs):
        super(SigninForm, self).__init__(*args, **kwargs)
        self.fields['password'].widget.attrs['class'] = 'form-control'
        self.fields['username'].widget.attrs['class'] = 'form-control'



'''
Create user avatar form
'''
class UserAvatarForm(forms.ModelForm):
    class Meta:
        model = UserAvatar
        fields = ['avatar']
        labels = {'avatar': ''}
        widgets = {
            'avatar': FileInput(attrs={'class': 'form-control', 'type': 'file', 'name': 'avatar', 'aria-label':'Upload'}),
        }

'''
Create user bio form
'''
class UserBioForm(forms.ModelForm):
    class Meta:
        model = UserBio
        fields = ['bio']
        labels = {'bio': ''}
        widgets = {
            'bio': Textarea(attrs={'class': 'form-control', 'rows': 10}),
        }


class UserSocialForm(forms.ModelForm):
    class Meta:
        model = UserSocial
        fields = ['linkedin', 'twitter', 'github', 'youtube']
        labels = {'linkedin': '', 'twitter': '', 'github': '', 'youtube': ''}
        widgets = {
            'linkedin': TextInput(attrs={'class': 'form-control form_inputs', 'required': False, 'placeholder': 'https://www.linkedin.com/in/demo/', 'name': 'linkedin'}),
            'twitter': TextInput(attrs={'class': 'form-control form_inputs', 'required': False, 'placeholder': 'https://twitter.com/demo', 'name': 'twitter'}),
            'github': TextInput(attrs={'class': 'form-control form_inputs', 'required': False, 'placeholder': 'https://github.com/demo', 'name': 'github'}),
            'youtube': TextInput(attrs={'class': 'form-control form_inputs', 'required': False, 'placeholder': 'https://www.youtube.com/channel/demo', 'name': 'youtube'}),
        }

'''
Change password form
'''
class ChangePasswordForm(UserCreationForm):
    class Meta:
        model = User
        labels = {'password1': '', 'password2': ''}
        fields = ['password1', 'password2']
        widgets = {
        }

    def __init__(self, *args, **kwargs):
        super(ChangePasswordForm, self).__init__(*args, **kwargs)
        self.fields['password1'].widget.attrs['class'] = 'form-control'
        self.fields['password2'].widget.attrs['class'] = 'form-control'