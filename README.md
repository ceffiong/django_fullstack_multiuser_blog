# django_fullstack_multiuser_blog

This repository contains the source code for a <b>Full-stack Multi-user Blog Application </b> developed in Python Django for Backend, JQuery and Bootstrap for the front end.

A video of the running application is available on <a href="https://www.youtube.com/watch?v=8dAKnUdVMc0" target="_blank">Youtube</a>

The usecase diagram below captures the system users and the functions/actions they can perform using the system <br><br>

![Use case diagram](https://github.com/effiongcharles/django_fullstack_multiuser_blog/blob/main/code_craft_blog_usecase_diagram.png) <br><br>

<b>Database schema</b> <br>
The diagram below shows the database schema exported from mysql phpmyadmin: 

![Database schema](https://github.com/effiongcharles/django_fullstack_multiuser_blog/blob/main/database_schema.png) <br>
<b>Note:</b> You can find the current <a href="https://github.com/effiongcharles/django_fullstack_multiuser_blog/blob/main/codecraft.sql" target="_blank">database file (codecraft.sql)</a> in the repo. <br> 

<b>Dependencies</b>
<ul>
  <li> Python </li>
  <li> Django - python -m pip install Django </li>
  <li> MySQL DB server e.g. WAMP/MAMP, XAMPP etc </li>
</ul>
<br>

<b>To launch app do:</b>
<ol>
  <li><b>python manage.py runserver</b> -> This command starts a webserver</li>
  <li>Open your webbrowser and type <b>localhost:8000/articles</b></li>
</ol>


<b>To-Dos </b>
<ul>
  <li>Article - search by title - using Ajax</li>
  <li>Rich text editor (e.g TinyMCE) for Article and Comments </li>
  <li>Title/subtitle article fields text wrap </li>
  <li>Article and Comment pagination using Ajax to avoid page reload</li>
  <li>Go live - deployment</li>
</ul>
