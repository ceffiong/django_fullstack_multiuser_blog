from django.urls import path
from . import views

urlpatterns = [
    path('articles/', views.index, name='all-articles'), # e.g. localhost:8000/articles
    path('articles/add/', views.add_article, name='add-article'),
    path('articles/<category>/', views.get_articles_by_category, name="get-articles-by-cat"),
    path('articles/user/<username>/', views.get_user_articles, name="get-user-articles"),
    path('articles/get/<slug:article_slug>/', views.get_article, name='get-article'),
    path('ajax/update/image/<slug:article_slug>', views.update_article_image, name='update-article-image'),
    path('ajax/edit/article/<slug:article_slug>/', views.edit_article, name='edit-article'),
    path('ajax/edit/comment/edit/<int:comment_id>/', views.edit_comment, name='edit-comment'),
    path('ajax/add/comment/<slug:article_slug>/<username>', views.add_comment, name="add-comment"),
    path('ajax/delete/comment/<int:comment_id>/', views.delete_comment, name='delete-comment'),
]
