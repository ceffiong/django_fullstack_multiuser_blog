from django.urls import path
from . import views

urlpatterns = [
    path('signup/', views.sign_up, name='signup'),
    path('signin/', views.sign_in, name='signin'),
    path('signout/', views.sign_out, name='signout'),
    path('changepassword/<username>/', views.change_password, name='change-password'),
    path('users/<username>/', views.profile, name='profile'),
    path('ajax/profile/edit/<username>/', views.edit_profile, name="edit-profile")
]
