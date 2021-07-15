from django.contrib import admin
from .models import Article, Comment, Category

# Register your models here.

class ArticleAdmin(admin.ModelAdmin):
    list_display = ('title', 'category')
    list_filter = ('title', 'category')
    prepopulated_fields = {'slug': ('title', ) }

class CategoryAdmin(admin.ModelAdmin):
    list_display = ['category']

admin.site.register(Article, ArticleAdmin)
admin.site.register(Comment)
admin.site.register(Category, CategoryAdmin)


