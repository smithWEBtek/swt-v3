Final Project: Rails API with React Redux client

Brad Smith

www.smithWEBtek.com

https://github.com/smithWEBtek


This blog post summarizes the final project I built to meet the graduation requirements for the Flatiron School (Learn Verified) Full Stack Web Developer program. 

All of the requirements are met and then some. 

I took this project seriously and have done the best I can given my current skills. 


==================================================================================

REQUIREMENTS

[X] The code should be written in ES6 as much as possible

[X] Use create-react-app generator to start your projec

[X] Your app should have one HTML page to render your react-redux application

[X] There should be 2 container components

    Selected list of CONTAINERS: Lessons, Students, Teachers, Resources, LessonResources (and there are more )

[X] There should be 5 stateless components

    Selected list of STATELESS FUNCTIONAL components: Student, Teacher, Resource, StudentService, TeacherService, ResourceService, LessonService ( among others )

[X] There should be 3 routes

    List of routes: 
    
      /students, /teachers, /resources, /lessons (for indexs of these data groups)

      /students/:id (for individual student)
      
      /students/:id/edit (for editing individual student)

      
      /teachers/:id (for individual teacher)
      
      /teachers/:id/edit (for editing individual teacher)

      
      /resources/:id (for individual resource)
      
      /resources/:i/editd (forediting  individual resource)

      
      /lessons/:id (for individual lesson)
      
      /lessons/:id /edit(for iediting ndividual lesson)
      


    
[X] use react-router and proper RESTful routing

[X] use async actions to send data to and receive data from a server

[X] Rails API should handle the data persistence. 

[X] You should be using fetch() within your actions to GET and []  POST data from your API

[X] Do not use jQuery methods.

[X] client-side application should handle the display of data with minimal data manipulation

[X] app should have some minimal styling: feel free to stick to a framework (like react-bootstrap), 

[X] write (additional) CSS yourself if you wish

[X]  use Redux middleware to respond to and modify state change


==================================================================================
Concept for the app
  
  Piano studio CRM and teaching tool, incorporating Students, Teachers, Resources and Lessons

  Teachers can quickly add/remove Resource(s) to a Lesson, all interlinked and defined for the Student (and Teacher)

  3 types of Resources are instantly rendered in a custom Resource Viewer accessible to Teacher and Student.

  The Resource Viewer uses stateless function components for each of the 3 Resource types 'pdf'=PDF, 'aud'=Audio, 'vid'=Video
  
  Rails API and Active Record provide data persistence, semantic layer and JSON data via the browser

  ActiveRecord associations and Rails Serializers provide complex and solid interleaving of data, at API endpoints
  
  React provides the framework to allow Javascript to play nicely with HTML and CSS
  
  Redux provides the management of the "state" of the data, as it comes and goes to the database via the API.


Regarding "state"...
  
  I chose to mix both Redux state and "local" state in some components. 
  
  I learned it through research and I found that there are some things that do not need to be  in the Redux state, such as: 
  
    - the temporary data someone types into a form before saving
  
    - the visibility status of a modal or presentaional component
  
    - data that is grouped or staged prior to assembly before going to the database

==================================================================================
Regarding CSS...

  I used 3 different methods for styling. 

    - ReactStrap was helpful in providing a quick method to get components and data rendered in a decent view

    - CSS modules and the approach of creating dedicated CSS files matching files and folders of the project, made it easy to 

    add custom CSS when I where I needed it, without having to build it all from scratch. There are times when I absolutely

    insist on tweaking something visual.  And there are times when I just want to throw in a component and have it work, while 

    I grapple with some deeper thought and programming. 

    - Inline styles. God forbid, yes there are some places where I just wanted some quick styling without creating a css file, 
    
    and without importing a reactstrap component.


==================================================================================
Regarding React...

  I hated it! Until I learned it. Now I really enjoy it. 

  I was at a party recently where someone said that 'Rails is old now, etc ...'  I am so happy to have found a place to use 
  
  Rails as an API while using React and Redux to make the single page client side rock! I have not learned Angular or VUEjs, 

  but I can tell they are in my future.  I am so excited at the idea of being able to put my creative ideas into practice 
  
  through coding!

 
==================================================================================

Building Rails API


DATA MODEL, migrations, active record relationships and sample data

TEACHER

  attributes :id, :firstname, :lastname, :email
  
  has_many :students
  
  has_many :lessons
  
  has_many :lesson_resources, through: :lessons
  
  has_many :resources, through: :lessons


STUDENT

  attributes :id, :firstname, :lastname, :email, :level, :teacher_id

  belongs_to :teacher

  has_many :lessons

  has_many :resources, through: :lessons
 

LESSON

  attributes :id, :date, :notes, :teacher_id, :student_id, :student, :teacher
  
  belongs_to :teacher
  
  belongs_to :student
  
  has_many :lesson_resources
  
  has_many :resources, through: :lesson_resources
 

LESSON_RESOURCE

  attributes :id, :lesson_id, :resource_id
  
  belongs_to :lesson
  
  belongs_to :resource


<code>
  create_table "lesson_resources", force: :cascade do |t|
    t.integer "resource_id"
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.date "date"
    t.string "notes"
    t.integer "teacher_id"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.string "description"
    t.string "format"
    t.string "location"
    t.string "url", default: "no_url_given"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.integer "level"
    t.integer "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<code>

User Experience

  Ability to organize, view, create and assign multiple resources to students via lessons, from a central repository of 
  Resources.

  Resources stored online based on Resource type

    Audio: Soundcloud

    PDF: Cloudinary

    Image: Cloudinary

    Video: YouTube

  Easy access to multiple resources while teaching.

  Add / remove resources to lessons



  Students have real-time list of all assigned resources

  Teachers see all of their Students, Lessons and all available Resources

  Lesson can have multiple Resources, easy add / remove 



  All data is inter-related through Active Record, surfaed by Rails API



  Add forms, are using Modals to enhance User Experience



==================================================================================

Building basic React app



React Container / Component folder structure for the main 4 data groups is consistently named and organized.

Each of the 4 groups has unique requirements for data and inter-relations with the other groups. 

Naming conventions for folders and javascript files follow Rails restful perspective.



User Interface components are in a separate folder for reuse by any of the main component groups.



Styling is minimal, but clean through use of Reactstrap

Beyond Reactstrap there are several customized css files, each paired and named the same as the files they serve.

There are some global css styles in App.css, imported as "appstyles". 

The layout is responsive, although the tables of the main 4 data groups are not stable in terms of  width, which drives me 
nuts.



==================================================================================

Redux:

All 4 major data groups have idential Redux actions, reducers and naming conventions.

As a result, it was easy to add a 5th major data group "LessonResources" which allowed the convenient feature of adding and 
removing Resources to a given Lesson. 



Thunk (middleware) is implemented to allow each of the 4 main data groups to have Start, Success, Fail phases for all CRUD 
operations with the API. 



==================================================================================

Rails API serves all data requirements for Index, Show, Create, Update, Destroy and all possible groupings availabe through 
ActiveRecord associations. 

Serializers are used extensively to serve API data without any need for manipulation on the client side. 

In fact, one could surf all of the various data groups throught the JSON API available in the browser. 



==================================================================================

The concept of the site is to bring as many varied resources to bear on the student as possible, in all formats.

PDF files showing musical notation and ideas are easily accessible throughe ResourceViewer component which serves up stateless 
function components based on Audio, Video, PDF formats in the Resources.



Data:

  A custom rake file was used throughout development to allow convenient data replenishing.

  the command is rake db:dcms

  Drop, Create, Migrate, Seed / Start

  This allows for confidence in data integrity while in the throes of development and debugging.

  The seed data is realistic and provides another layer of confidence during development. 



Cloudinary: https://cloudinary.com

  Cloudinary is an excellent platform for storage and retrieval of digital artifacts, delivered to the site quickly like a CDN.

  Their API provides extensive manipulation of files for integration into the site, although for this project it was only used 
  as means of storage and quick retrieval through custom URL's which currently hardcode in the seeds data file. 

  Future versions of this app would allow automatic storage, manipulation and retreival of digital files, as an added 
  convenience for Teachers and Students.



Mockaroo:  https://www.mockaroo.com

  Mockaroo is a site where you can spin up dummy data quickly in formats that make sense with your application, and then 
  available for quick download in many formats. 



Seeds.rb:

  The seeds file for this project is based on a structure in one of the Learn curriculum labs, which I expanded upon to suit 
  the needs for this project. My strong belief is that without seed data, and a solid data model, it is akin to building on 
  sand versus a strong data foundation. 



  Care was also taken in the choosing of names for data, folders and files, adhering to RESTful conventions as much as 
  possible. Data names also are as organic as possible reflecting their day to day usage.



==================================================================================

Future: 

  I would like to explore the use of MIDI information in a 'play along' format for piano students. After nearly 2 years of 
  doing hundreds of programming labs, where tests light up GREEN or RED, I believe it can be done in a similar fashion for 
  piano students. 

  The goal would be to capture the digital markers for a song, to use as a test measure. 

  The student would then play their MIDI based keyboard along with the recorded sample track, while javasript functionality 
  compares the student performance against the recorded sample (of course, alowing for human error, enough to encourage 
  accuracy without ruining the student's spirit). 



==================================================================================

Observations on the Flatiron journey: 



  I believe that much of software programming comes down to conceptualizing what needs to happen and then finding the language 
  and syntax to bring it into physical reality. Debugging a difficult error always follows a pattern of mystery, clues, 
  thought, experimentation and solution. 



  People tend to bring their own personalities into whatever they do. Programming is no different. One has to confront their 
  own emotions, personal inertia and adapt to the requirements of learning new languages. I have found that I work best coding 
  along with superior programmers, followed by my own experimentation and brute force repetition of concepts until I have 
  internalized them. My reading of material has improved greatly as a result of the Flatiron curriculum, because one is forced 
  to think through problems, research / trial & error to solve labs. 



  My own history as a craftsperson pushes me to build projects and refine code instinctively. There is such a satisfaction in 
  seeing code work in the browser especially when it does what you expected it to do!

  I've learned to be more patient with things I don't know, errors I don't understand and more patient with myself when I go 
  completely blank momentarily forgetting basic things. 



  The daily/weekly onslaught of constantly learning new languaes, syntax, configuration and idiosyncracies of every language 
  gradually builds an internal mental toughness to absorb new things through all senses, not just the eyes and brain.



  I plan to use my skills to improve my own life, my family's life and the lives of my clients and employers. 













 
