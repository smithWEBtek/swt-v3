170416
static views for static page
sidebar nav defaults to same as application layout
when a model is created, it's index.html.erb becomes the default destination from navbar
  'blog', goes to /posts index.html.erb, else 'about', goes to views/static/about.html.erb
use 'welcome.css.scss' for custom css styles