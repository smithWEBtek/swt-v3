# Create Your Project Data
This post covers some good habits around preparing a solid dataset for your development project for Sinatra, Rails, React, jQuery, javascript, React, Redux. The idea is to have solid relational data prepared before you begin the thornier parts of client side rendering, and to help you keep your focus during development. 

Columbo (the great 70s TV detective) would often solve a case with many small bits of seemingly unrelated data. 
When we are in the throes of debugging and trying to make our code work, a great helper can be your seed dataset. You know exactly what the list of 'cats' or 'books' should be and sometimes you don't get 100% clear answers from the developer console or debugger(s).

## CREATE YOUR DATA MODEL

#### Why? The better you can shape your tables around actual user needs, the more relevant your applications will be. 
- This is about asking yourself enough questions to determine the shape of your data tables and how they interrelate. - If we are tracking for example, "user votes" on a movie, we have to come up with solid tables and columns to support this business logic. 

- show business question examples
- show database table examples
- ask enough questions to determine 1 to many, 1 to 1, many-to-many

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
