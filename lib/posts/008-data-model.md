 
## Rails app data model part 1: Document your model

![](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTot9BkPEzMHbP4uWvww0QMhOYhDbT_Pa224lyDMJr7ZpJk7Bb0) 
Columbo (the great 70s TV detective) would often solve a case with small bits of seemingly unimportant information. The unwitting suspect would admit to key points while Columbo quietly built his case. 

This post covers some good habits for preparing a solid dataset in your development project for Sinatra, Rails, React, jQuery, javascript, React, Redux or anytime you need a sample dataset and database for developement. 

For applications that require a database, there are steps I follow that help me ensure my data is solid before I write any of the application logic or client side views. Like Columbo, this helps me eliminate things that would otherwise clutter my thinking as I develop, debug and add abstraction to my application. 

## Some reasons why I always do this before a project:
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

1. Plan Data Model
2. Choose Naming Convention
3. Plan Active Record relationships
4. Write Database Migrations
4. Use Active Model Serializer gem
5. Create Seed file and Test
6. Create Rake tasks to DCMS (Drop, Create, Migrate, Seed / Start) the DB and App 

## Why? 
The better you can shape your tables around actual user needs, the more relevant your applications will be. Ask enough questions to determine relationships of one-to-many, one-to-one, many-to-many

Most important, you want to think about the relationships between tables, so that you get the complex relationships you need, while you leave simple things alone. 

Solid data models are a combination of:

- practical thinking about how you refer to the data
- intuitive naming conventions
- database relationships

### Practical Thinking:
Your early instincts about names often prove correct.
If you find yourself calling a table something other than what you've named it, you probably should consider changing to your instinctive names. Be aware that there are ['reserved words'](http://www.rubymagic.org/posts/ruby-and-rails-reserved-words) in most languages. You don't want to use 'type' for a table name in Rails for example. 


### Naming Conventions:
You want to develop your instincts for tight, short names if possible, that reflect the intuitive understanding of your data. You'll type these names hundreds of times in the development of your project, so wouldn't you rather type "zip" instead "postal_code"? 
 
### Database Relationships:
![image](data:image/jpeg;base64,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)
 

### Talk about your data, using Nouns, Verbs and Adjectives
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

### Identify NOUNs
- Student, Teacher, Post, Task

What are the attributes (ADJECTIVES) of that NOUN? 
- student.age, student.major
- teacher.tenure_status, teacher.specialty
- post.title, post.content
- task.title, task.date

What are the VERBS describing things you do with that NOUN?
- student: 'attends' a class, 'submits homework', 'asks a question'
- teacher 'teaches a class', 'grades homework', 'creates lesson plan' 
- post: 'is read by a user', 'is liked or disliked', 'is published'
- task: 'is created', 'is overdue', 'is completed'

List the ways the NOUNs relate to each other:
- Teacher 'has_many' Student(s)
- Teacher 'has_many' classes
- Student has one Teacher for one class
- Student 'has_many' Teachers, through classes
- Post 'belongs_to' Author
- Author 'has_many' Post(s)
- Task 'belongs_to' Student

List specific relationships that will require a JOIN table
- You might have a Class table, that 'has_many' Students, and 'belongs_to' a single Teacher
- This would allow a singe Teacher to 'has_many' Students, THROUGH a Class
- The Class table might have these basic fields:
	- id (class_id if referred to in other tables)
	- teacher_id (the ID of a Teacher)
	- student_id (the ID of a Student)
	- subject (the subject of the class for example)

- We would create a new row in the Class table, for every single student_id
- This allows us to query the database for a single Teacher and get all the students for that Teacher through the rows in the Class table that contain that particular teacher's ID (teacher_id).


### For Example
In a recent Rails app for a music teaching studio, I wanted to have tables for Teachers, Students, Resources and Lessons. I talked through each one in my mind, determining the following for my context: 

```ruby
Teacher
- has_many :students
- has_many :lessons
- has_many :resources, through: :lessons

Student
belongs_to :teacher
- has_many :lessons
- has_many :resources, through: :lessons

Lesson
belongs_to :teacher
belongs_to :student
- has_many :resources

Resource
- has_many :lessons
- has_many :teachers, through: :lessons
- has_many :students, through: :lessons
```

Wherever possible, I wanted to exploit Active Record relationships so that my API data would have not only the related ID's but full related objects.
 

## Takeaways
### Nouns and Verbs
- think about Nouns and Verbs as you imagine your data set, 
- often a single (1) Noun takes action (verb) on (many) of another Noun
- who has many of what?
- what belongs to a single who?
- what are the natural join tables ( a Class joins a Teacher with multiple Students)
- what join tables do you need to create? 
### You might have to literally join two tables with an obvious name such as:
- project_student
- so a Teacher might 'has_many' project_students
- ...and would therefore 'has_many' students THROUGH project_students
- this would differentiate between the students that the Teacher has via Class, as above

### Settle on the types of table relationships you need
- 1 to 1
- 1 to many
- many to many 
- stand alone

## CREATE YOUR DATA PLAN 
- Based on your research, plan out your tables, columns and relationships
- This is one of the most productive things you can do before you start coding
- A solid plan, documented, provides you a path for inevitable future changes/iterations
- This forces you to refine your naming conventions

 ## Speaking of naming conventions...

![](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTot9BkPEzMHbP4uWvww0QMhOYhDbT_Pa224lyDMJr7ZpJk7Bb0) 

### Here are some thoughs about naming tables and columns. 
- I like easy names to spell and type, since we're typing them hundreds of times while we code. And we're thinking through code with these names in our head, so you want as little interuption in thought (over mundane things you can control) as possible.

- I like all lower case names if they work within best practices for the context. 

	- fname is a little cryptic, a little less readable than firstname
	- firstName is fine, if you never screw up the camel casing

	- firstname is easier becuase you never have to add a though about a capital.
	It is also only 3 letters different than 'lastname', so you can quickly copy it and edit the copy

- Short, concise names keep your thoughts clear, and lower case reduces typos
your mileage may vary and your boss may differ; don't be stubborn if your context requires something specific

- Your ability to FOLLOW what is asked of you, exactly, shows an employer that you can be a proper part of the business machinery; that you can be relied upon to do what is needed, without argument or improvisation where improvisation is not wanted or useful to the goal

## Summary
We need to think through our data, to choose practical, organic relationships.
We want to avoid too many fields for now, but still create enough data interconnection to make our API rich with relational data.
 

***

## Migrations and Seed file

We covered the internal thinking you must do before coding your Rails application data model. That internal work will save you a lot of rewriting, if you have asked yourself enough questions about the interactions of your tables and the naming conventions you will type 100s of times during your development process.

Have you ever been on a project where you are constantly using the word "title" in your code, but instead the database requires the word "name"? Or my favorite peeve:  firstName vs first_name vs fname vs first-name.

It is important to refine WHAT YOU WANT, before you start coding it.
Pseudo coding the database relationships, table names, column names and even the actual Rails database migrations, will: 

1. Make your project flow smoothly from conception to reality
2. Provide you with convenient paths to follow for changes
3. Document the database for working with other developers
4. Force your mind to decide what you need
5. Reduce the initial 'scope creep' that delays quick iteration
	- 3 or 4 columns in a table for first draft, not more
	- 3 or 4 tables if possible, to get first iteration 'live'
	- breadth before depth, get the body parts alive and working, then get fancy

# the Yin and Yang of it

We constantly battle the need to develop something fast, and the need to carefully plan our development. 

![](https://personaltao.com/wp-content/uploads/2014/10/yinyang.gif)

## Yin: 
Getting 'something' working quickly, helps you get to your 2nd iteration sooner, where key insights await.

## Yang: 
Coding immediately after conceiving an idea, could actually slow you down as you get lost in a rabbit hole, or stuck trying to make something work, which you end up abandoning. 

## CREATE YOUR SEED FILE
Once you have documented what you need for tables, column names and relationships, use this template for creating a seed file. It will be easy to update with any changes you make to your model. And with the rake task below, you can "flush the database toilet" as many times as you want, any time during the project for clarity while developing.

### [Ruby seed file template for Rails App](https://gist.github.com/smithWEBtek/506d596277e4f5c5ec1cb40826946253)

- The template has 2 parts for each database table. 
- The DATA_table_name variable, creates a Hash with keys for each column name, and a key for the sample data that matches the columns. You can edit the column names and sample data easily whenver you need to change your database.
- The other part is the Ruby method you run to create each new row in the database. It parses the DATA_table_name variable, creating each row.
- Finally, the seed file will have a master method for calling each of the "make_Data" methods. And a call for the master method to run at the bottom, to respond to your "rake db:migrate" command.

```ruby
def main
  make_diets
  make_groups
  make_foods
  make_users
end

main
```

### [Full example of seed file](https://github.com/smithWEBtek/diet-planner-v6/blob/master/db/seeds.rb)
 

---

### Happy coding!
 