# Oh, one more thing...
Columbo (the great 70s TV detective) would often solve a case with small bits of seemingly unimportant information. The unwitting suspect would admit to key points while Columbo quietly built his case. 

This post covers some good habits for preparing a solid dataset in your development project for Sinatra, Rails, React, jQuery, javascript, React, Redux or anytime you need a sample dataset and database for developement. 

For applications that require a database, there are steps I follow that help me ensure my data is solid before I write any of the application logic or client side views. Like Columbo, this helps me eliminate things that would otherwise clutter my thinking as I develop, debug and add abstraction to my application. 

### Some reasons why I always do this before a project:
I want to have a bullet proof way to reset my database anytime I please, with minimal refactoring or wondering, especially when I end up deploy my apps to Heroku, Netlify, Firebase, AWS or Github pages, I want to be sure that I have solid code for resetting my data on a remote server. With a thoughtful seed file, I have an easy way to add both new fields to my database and add new data to match those fields, removing any guesswork about the effectiveness of the new data. 

The idea is to have solid relational data prepared before you begin the thornier parts of client side development. If you are building anything from a small app, to a full blown API serving up data to a front end app, these steps will help you to: 

1. Conveniently Drop, Create, Migrate, Seed and Start your database and application 
2. Keep your focus during development
3. Eliminate some complexities during debugging, because you can rule out data problems
4. Have a familiar dataset throughout development, so that:
	a. Your views are more meaningful
	b. You will gain insights on ways to enhance your data model, based on your development
	c. You will have a convenient way to add these enhancements, and painlessly bring your results to life. 

When we are in the throes of debugging and trying to make our code work, a great helper can be your seed dataset. You know exactly what the list of 'cats' or 'books' should be and sometimes you don't get 100% clear answers from the developer console or debugger(s).

## Summary of steps: 

### 1. Plan Data Model
###	2. Choose Naming Convention
### 3. Plan Active Record relationships
### 4. Write Database Migrations
### 4. Use Active Model Serializer gem
### 5. Create Seed file and Test
### 6. Create Rake tasks to DCMS (Drop, Create, Migrate, Seed / Start) the DB and App 




#### Why? The better you can shape your tables around actual user needs, the more relevant your applications will be. Ask enough questions to determine relationships of one-to-many, one-to-one, many-to-many

Most important, you want to think about the relationships between tables, so that you get the complex relationships you need, while you leave simple things alone. 

Solid data models are a combination of 

practical thinking about how you refer to the data
intuitive naming conventions
database relationships

Practical Thinking:
Your early instincts about names often prove correct.
If you find yourself calling a table something other than what you've named it, you probably should consider changing to your instinctive names. 
Be aware that there are ['reserved words'](http://www.rubymagic.org/posts/ruby-and-rails-reserved-words) in most languages. You don't want to use 'type' for a table name in Rails for example. 


Naming Conventions:
You want to develop your instincts for tight, short names if possible, that reflect the intuitive understanding of your data. You'll type these names hundreds of times in the development of your project, so wouldn't you rather type "zip" instead "postal_code"? 

Database Relationships:
Think about the relationships, such as 1 to 1, or 1 to many, or many to many using the sample questions below, or just thinking through the life cycle of your data. Here are some questions to ask yourself about the tables in your data model to help determine relationships. 

'it'
What is it?
What does it do?
Why does it do it?
When does it do it?
When does it start doing that?
When does it end doing that?
What changes after that?
 
Where does it exist?
What things does it touch ?
How many are there of it? 
How is it created, edited, updated, deleted?

In a recent Rails app for a music teaching studio, I wanted to have tables for Teachers, Students, Resources and Lessons. I talked through each one in my mind, determining the following for my context: 

Teacher
has_many :students
has_many :lessons
has_many :resources, through: :lessons

Student
belongs_to :teacher
has_many :lessons
has_many :resources, through: :lessons

Lesson
belongs_to :teacher
belongs_to :student
has_many :resources

Resource
has_many :lessons
has_many :teachers, through: :lessons
has_many :students, through: :lessons


Wherever possible, I wanted to exploit Active Record relationships so that my API data would have not only the related ID's but full related objects.


Active Model Serialization
Rails magic provides 




#### takeaways
  #####Nouns and Verbs
  think about Nouns and Verbs as you imagine your data set, 
    often a single (1) Noun takes action (verb) on (many) of another Noun
    who has many of what ?
    what belongs to a single who ?
  #####Join Tables
  where do we need JOIN tables ? 

## CREATE YOUR DATA PLAN 

- what this section is about
- why it matters
- research or examples
- takeaways

## CREATE YOUR SEED FILE

- what this section is about
- why it matters
- research or examples
- takeaways

***
---

### Summary


## Plan your data model
### have at least 3 tables that have some ActiveRecord relationships
### build the Rails app as an API
### Serialize the data with rails g serializer
  (in the serialzier) add in all of the available attributes (columns from table) to serializer
  (in the serialzier) add in all of the ActiveRecord relationships 

```ruby
Appointment
  date
  customer_id
  service_id
  notes

Customer
  firstname
  lastname
  email
  city

Service
  title
  description
  duration
  price

Region
  north
  south
  east
  west
```

### ActiveRecord relationships: think through how the data will interact

Now let's think about our data tables and column names. 
I like easy names to spell and type, since we're typing them hundreds of times while we code. And we're thinking through code with these names in our head, so you want as little interuption in thought (over mundane things you can control) as possible.

I like all lower case names if they work within best practices for the context. 

fname is a little cryptic, a little less readable than firstname
firstName is fine, if you never screw up the camel casing

firstname is easier becuase you never have to add a though about a capital
it is also only 3 letters different than 'lastname', so you can quickly copy it and edit the copy

short, concise names keep your thoughts clear, and lower case reduces typos
your mileage may vary and your boss may differ; don't be stubborn if your context requires something specific

your ability to FOLLOW what is asked of you, exactly, shows an employer that you can be a proper part of the business machinery; that you can be relied upon to do what is needed, without argument or improvisation where improvisation is not wanted or useful to the goal

Now we will think through our data, to choose relationships
We want to avoid too many fields for now, but still create enough data interconnection to make our API rich with relational data.

What good does it do if you have a single table of cat names, colors and breeds, when you are trying to show off your front end reporting skills? 

The real world has interconnected data, which is often the reason we have a job, because the root issue for many businesses is that they cannot properly connect simple data, accurately, timely, or in a format that is useful.
Useful takes on many forms, from the types of devices, the 'real time' nature of data, the convenience of getting that data onto a factory floor for action, or into the phones of a construction crew, or an EMT ambulence team. 

Let's fill in our ActiveRecord relationships now, before we start building migrations.

```
Appointment
  date
  customer_id
  service_id
  notes

  rails g resource Appointment date:date notes:string



Customer
  firstname
  lastname
  email
  city

Service
  title
  description
  duration
  price

Region
  north
  south
  east
  west
```

















make sure you add " dependent: :destroy " where applicable so that when you delete an object that has related children, you might wish to either delete those chilren, or assign them a new 'parent' (i.e. if you delete a Teacher, you might want to delete that Teacher's students, or maybe instead, you would reassign those affected Students to have a new default teacher_id, pointing to a teacher called "unassigned" in the database.)
Or, you could have an attribute on the Student model, that you would set to 'false', meaning they don't have a Teacher.
But in every case, determine the behavior you need while you are putting together the building blocks of your data model. 

  Get serious about your data early.
  You will reap big rewards later, when you are battling configuration and API access and weird errors on Heroku or Netlify, which may not be as readily available as your local machine's console when running a Rails app at 127.0.0.1:3000. 




build a seed file of relevent data
load objects that are "has_many" first, in your seed file
  if a Student requires a 'teacher_id', that Teacher must exist before your file processes the list of new Students

create a rake task to drop your database, migrate, seed and restart Rails server
