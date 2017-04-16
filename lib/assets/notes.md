170416

static views for static page
sidebar nav defaults to same as application layout
when a model is created, it's index.html.erb becomes the default destination from navbar
  'blog', goes to /posts index.html.erb, else 'about', goes to views/static/about.html.erb
use 'welcome.css.scss' for custom css styles

recover from 1 hour github shithole

new project model
  t.integer :user_id
  t.string :title
  t.text :summary
  t.text :business_description
  t.text :current_solution
  t.text :data_sources
  t.string :data_sample1
  t.string :data_sample2
  t.string :data_sample3
  t.text :data_view1
  t.text :data_view2
  t.text :data_view3
  
new contact model
  t.string :fname
  t.string :lname
  t.string :email
  t.string :username
  t.strign :password
  t.string :phone
  t.string :website
  t.string :address
  t.string :city
  t.string :state
  t.string :zip