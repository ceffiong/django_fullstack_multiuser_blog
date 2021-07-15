from django.contrib import admin

from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from django.contrib.auth.models import User

from .models import UserBio, UserAvatar, UserSocial

# Define an inline admin descriptor for UserBio model
# which acts a bit like a singleton
class UserBioInline(admin.StackedInline):
    model = UserBio
    can_delete = False
    verbose_name_plural = 'Bio'

class UserAvatarInline(admin.StackedInline):
    model = UserAvatar
    can_delete = False
    verbose_name_plural = 'Avatar'


class UserSocialInline(admin.StackedInline):
    model = UserSocial
    can_delete = False
    verbose_name_plural = 'Social'

# Define a new User admin
class UserAdmin(BaseUserAdmin):
    inlines = (UserBioInline, UserAvatarInline, UserSocialInline)

# Re-register UserAdmin
admin.site.unregister(User)
admin.site.register(User, UserAdmin)

