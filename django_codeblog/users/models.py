from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class UserAvatar(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    avatar = models.ImageField(upload_to='user_cover_images', null=False)

    def __str__(self):
        return f'{self.avatar}'


class UserBio(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    bio = models.TextField(null=False)

    def __str__(self):
        return f'{self.bio}'


class UserSocial(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    linkedin = models.URLField(max_length=255, null=True, blank=True)
    github = models.URLField(max_length=255, null=True, blank=True)
    twitter = models.URLField(max_length=255, null=True, blank=True)
    youtube = models.URLField(max_length=255, null=True, blank=True)
