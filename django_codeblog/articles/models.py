from django.db import models
from django.contrib.auth.models import User

# Create your models here.


class Category(models.Model):
    category_id = models.BigAutoField(primary_key=True)
    category = models.CharField(max_length=255, unique=True)

    def __str__(self):
        return f'{self.category}'


class Article(models.Model):
    article_id = models.BigAutoField(primary_key=True)
    title = models.CharField(max_length=255)
    subtitle = models.CharField(max_length=255)
    cover_image = models.ImageField(upload_to='article_cover_images', null=True)
    content = models.TextField(null=True)
    category = models.ForeignKey(Category, to_field="category_id", on_delete=models.DO_NOTHING)
    slug = models.SlugField(max_length=255, unique=True)
    created_by = models.ForeignKey(User, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f'{self.title} - {self.category}'


class Comment(models.Model):
    comment_id = models.BigAutoField(primary_key=True)
    comment = models.TextField()
    created_by = models.ForeignKey(User, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    # defines a many-to-one relationship
    # one article has many comments
    article = models.ForeignKey(Article, to_field="article_id", on_delete=models.CASCADE)


    def __str__(self):
        return f'{self.comment}'

