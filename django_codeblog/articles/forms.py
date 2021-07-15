from django import forms
from django.forms import ModelForm, Textarea, TextInput, FileInput, Select
from .models import Comment, Article

'''
Create comment form
'''
class CommentForm(forms.ModelForm):
    class Meta:
        model = Comment
        fields = ['comment']
        labels = {'comment': ''}
        widgets = {
            'comment': Textarea(attrs={'id':'commentTextAarea', 'class': 'form-control', 'rows': 3}),
        }


'''
Create article form
'''
class ArticleForm(forms.ModelForm):
    class Meta:
        model = Article
        labels = {'title': '', 'subtitle': '', 'cover_image': '', 'content': '', 'category': ''}
        fields = ['title', 'subtitle', 'cover_image', 'content', 'category']
        widgets = {
            'title': TextInput(attrs={'class': 'form-control form_inputs form_title ps-0 text-wrap'}),
            'subtitle': TextInput(attrs={'class': 'form-control form_inputs form_subtitle ps-0'}),
            'cover_image': FileInput(attrs={'class': 'form-control', 'type': 'file'}),
            'content': Textarea(attrs={'class': 'form-control', 'rows': 10}),
            'category': Select(attrs={'class': 'form-select'})
        }


'''
Create article cover form
'''
class ArticleCoverImageForm(forms.ModelForm):
    class Meta:
        model = Article
        labels = {'cover_image': ''}
        fields = ['cover_image']
        widgets = {
            'cover_image': FileInput(attrs={'id':'article-file-input', 'class': 'form-control', 'type': 'file', 'aria-describedby':'inputGroup', 'aria-label':'Upload'})
        }