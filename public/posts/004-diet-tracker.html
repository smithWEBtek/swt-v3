##Diet-Tracker
is a basic CMS (Content Management System) for Users to track their meals
and log their experiences while following a particular Diet.

This Rails application was developed as part of the Learn.co Full Stack Web Development course 
If you are not familiar with [Flatiron School](https://flatironschool.com/), please check it out!
 

![](https://res.cloudinary.com/smithwebtek/image/upload/v1492046956/diet-tracker/image001.png?raw=true)

##The major components are
Foods, Meals, Groups (food groups) , Diets and Users.

###Food

Food belongs to a specific Group (Dairy, Vegetables, Fruits, etc.).

Food has a default calories value of 1 upon creation, but can be
set to User*s choice.

User can create a new Food and suggest Group, but Admin controls
editing of Foods/Groups.

Food *cals* (calories) are tracked by User-meal, and by Group, so
we have stats on how many calories the Vegans are eating, how many meals, and
average calories per meal. 

Same goes for Users, we track food calories, number of meals and
avg cals per meal.

###Group

Groups (food groups) are mostly categorical in this version.

Future versions could build views and stats on Groups, comparing
outcomes with User eating habits. 

###Diet

Diets are tracked similar to Food calories, and a User can view
Diet Stats showing the stats for their diet aggregating all users on that Diet.

The Diet Stats can show how your (Diet) group*s stats can suffer
if you fall off the wagon and eat 7 cheeseburgers while on the Vegetarian diet,
for example.

Only Admins can create new Diets.

###Meal

The heart of the app, is the new Meal(s) form, where a User can
input 3 meals for a day (breakfast, lunch &amp; dinner). Each meal is a
separate new instance of the Meal class, and requires a Date, Food and Qty,
note/memo is optional, all are captured using the custom attributes method *meals_attributes=*
in the User model. 

Food can be selected (for each meal) via collection_select
(dropdown) menu, or the user can enter a new Food for that meal. 

If a new Food, the entry is compared with the Database, to
find_or_create it, so there are not multiple matching foods.

Qty (quantity) is a number, that multiples whatever the calorie
(cals) amount is in the particular Food chosen. This product is added up with
other users on your same diet.

![](https://res.cloudinary.com/smithwebtek/image/upload/v1492046956/diet-tracker/image002.png?raw=true)
 
###User (standard)

Registration

User can register via signup form, or use Omni-auth via Facebook.

Users can be either Standard or Admin (role), default is *standard*.

Only an Admin can access the form to edit a User*s *role*, and
make them an Admin. 

User functions

View

User can see all Foods, Groups, Diets and Diet Stats, but they
can*t edit them.

(User can create new Foods via Meals nested form.)

Diet 

Each User is on a single Diet at a time.

User can change Diet and is prompted to choose a Diet, if they
didn*t choose during registration.

User can view DietStats, showing progress of all users on same
Diet.

Meals

See Meal above

Logs

User can create Log(s) with a date and a note, as much as they
want.

Log is nested under User, so only User and Admin can view a User*s
logs.

Logs cannot be created for future date, must be today or earlier.

User Data

User can download their information from the User Account page,
in csv format.

##Example of User Account
page: 

(Fred logs his struggle with cheeseburgers and cake)

![](https://res.cloudinary.com/smithwebtek/image/upload/v1492046957/diet-tracker/image003.png?raw=true)

User (admin)

Admin has all functions of a standard user, in addition to Admin
functions.

Admin has full CRUD permissions for Foods, Groups, Diets and
Users

Admin logs in and has a pink *admin navigation bar* for their functions

![](https://res.cloudinary.com/smithwebtek/image/upload/v1492046957/diet-tracker/image004.png?raw=true)

###Fun stuff

 Celebrity Random Quotes on the home page

Home page shows random quote generator

User can generate 5 new random quotes with Celebrity, Verb,
Adjective, Food, Diet and Phrase. These are generated using 

User can use a form to create new Verbs, Adjectives, Foods,
existing Diet and new Phrase.

New data is then incorporated into random quote generation.

User can download the current list of random quotes, via CSV
download link.

method that builds random quotes in quote.rb:

```ruby
  def self.build_random_quotes
    5.times do
      @quote = Quote.new
      @quote.celeb = Celeb.find(rand(1..Celeb.all.count.to_s.to_i))
      @quote.verb = Verb.find(rand(1..Verb.all.count.to_s.to_i))
      @quote.adj = Adj.find(rand(1..Adj.all.count.to_s.to_i))
      @quote.food = Food.find(rand(1..Food.all.count.to_s.to_i))
      @quote.phrase = Phrase.find(rand(1..Phrase.all.count.to_s.to_i))
      @quote.diet = Diet.find(rand(2..9))
      @quote.save
    end
  end
```

![](https://res.cloudinary.com/smithwebtek/image/upload/v1492046957/diet-tracker/image006.png?raw=true)

## Seeds.rb


Throughout this project I made heavy use of a seeds file, to
populate and re-populate my database with meaningful data. 

rails db:drop

rails db:migrate

rails db:seed

Editing this file and catching errors as I constantly changed my
data model, helped me understand the application I was building from another
perspective. 

It functioned as a good test of my application, to see if I had
broken things to where the data model might not consume the data properly. 

Each model in the database has: 

DATA hash

method to build the data using the attributes (columns) in
the data file

Having a familiar data set helps with troubleshooting forms,
views and envisioning the user experience interacting with the application.


DATA hash for adding users: 
 
```ruby

DATA_users ={
 :user_keys =>
    ["role", "username", "email", "weight", "password", "diet_id"],
  :users => [
    [0, "ned", "ned@abc.com", 209, "pointer", 4],
    [1, "max", "max@abc.com", 190, "pointer", 2],
    [0, "skai", "skai@abc.com", 180, "pointer", 2],
    [0, "kaleo", "kaleo@abc.com", 203, "pointer", 3],
    [0, "megan", "megan@abc.com", 137, "pointer", 4],
    [0, "tenzing", "tenzing@abc.com", 120, "pointer", 5],
    [0, "davis", "davis@abc.com", 216, "pointer", 2],
    [0, "cole", "cole@abc.com", 255, "pointer", 3],
    [0, "ted", "ted@abc.com", 195, "pointer", 4],
    [0, "fred", "fred@abc.com", 320, "pointer", 1]
  ]
}
```

method for making the users from the DATA_users
hash

```ruby

def make_users
  DATA_users[:users].each do |user|
    new_user = User.new
    user.each_with_index do |attribute, i|
      new_user.send(DATA_users[:user_keys][i]+"=", attribute)
    end
    new_user.save
  end
end
```

The seeds file then calls a *master* method (main) that simply
calls all the methods (one for each model), and data is loaded in the DB.


*master method* that includes the *make_users* method:

```ruby
def main
  make_diets
  make_groups
  make_foods
  make_users #order these methods by thinking through Active Record associations & models requiring foreign_keys
  make_logs  #that foreign_key must exist for the seed file to load
  make_mealnames
  make_meals
  make_celebs
  make_verbs
  make_adjs
  make_phrases
  make_quotes
end

main
```

##Lesson learned about the seeds.rb file: 

If a model requires an ID from another model, you have to make
sure that the foreign key model is loaded first in order (top to bottom).

We can*t make the Users until we have Diets, so that the User can
have a diet_id. 

We can*t make Foods unless we*ve got Groups created first, because
a Food requires a group_id or it won*t validate.

```ruby
class Food < ApplicationRecord
  has_many :meals
  belongs_to :group
  validates :name, presence: true, uniqueness: true
  validates :cals, numericality: { greater_than: 0 }
end
```

##Requirements for this assignment: 

### Full
requirements are
[here]("https://github.com/learn-co-students/rails-assessment-v-000/blob/master/README.md"),
stripped down version follows, with references to Diet-Tracker application
where requirement is met:



REQUIREMENTS

Use the Ruby on Rails framework.
Done

Your models must include a has_many, a belongs_to, and a has_many
:through relationship. 
User has_many :meals, has_many :foods, through: :meals
User has_many :logs

Model acting as a join table for the has_many through.
Meal model, joins User and Food

The join model must also store an additional user submittable
attribute (not just timestamps or auto-created fields) describing the
relationship. 
Meal form includes Food, either from existing, or User-submitted,
without creating duplicates.

Models should include reasonable validations for the simple
attributes.
All models have at least 1 validation, some have multiple
All new / edit forms for models have error handling in the forms.
Exception: the new Meal form because it uses nested attributes,
can only respond with *Meals is invalid* because the errors do not flow up to
User in this case. 
But, I do have flash message that shows on the form, if Meal is
invalid. 
There are gems that I could pursue to make this work, but I chose
to leave this working as is.
Every other form in the app, lights up with big red errors if
data is invalid.

Include at least one class level ActiveRecord scope methods. 
I have included 10, one for each Diet group of users.
Each scoped group is an alias of the Diet name, *Vegans* *Carnivores*
*Vampires*, etc. 
These scoped groups are then used to calculate DietStats.
The methods for this are all in the application_controller.

Include a nested form that writes to an associated model through
a custom attribute writer. 
Meals/new form accepts 3 meals, using existing Foods or
User-submitted foods, processed by a *meals_attributes=* method in User model.

This (custom attribute writer ) method cannot be provided via the
accepts_nested_attributes_for macro because the custom writer has to
*find_or_create* with User submitted info.
See answer above. Done.

Application must provide a standard user authentication,
including signup, login, logout, and passwords. 
Devise is used in this application for User sign_up, sign_in and
sign_out.

Authentication system allow 3rd party login. Facebook, twitter,
foursquare, github, etc...
OmniAuth is used for authentication via Facebook.

Nested resource with the appropriate RESTful URLs. Additionally,
your nested resource must provide a form that relates to the parent resource. 
Logs is nested under User
Log new form, allows User to capture thoughts and experiences of
dieting.

Forms should correctly display validation errors. Your fields
should be enclosed within a fields_with_errors class and error messages
describing the validation failures must be present within the view.
Every other form in the app, lights up with big red errors if
data is invalid.
Exception: see new Meal form above

Application must be, within reason, a DRY (Do-Not-Repeat-Yourself)
rails app. Logic present in your controllers should be encapsulated as methods
in your models. Your views should use helper methods and partials to be as
logic-less as possible. Follow patterns in the Rails Style Guide and the Ruby
Style Guide.
All models use partials for
new / edit form
model show view
model index view
Naming convention:

_form is used for new/edit

_model is used for show

_models is used for index
Partials do not contain html formatting except for the use of
tables to display data
View do not call Models
Controllers are DRY according to my current level of
understanding and time constraints.



##Lessons Learned:

Take the time to write pseudo code, elaborate on visions before
proto-typing.

Don*t get sucked into User Interface fun stuff at the expense of
core functionality and progress.

Think out loud through the process of an error. Something expects
something and isn*t getting it, for example. Get childlike simple about the
error message and you*ll likely discover that *something wants something but
isn*t getting it*.

Think in sprints, don*t just code like a squirrel here and there.
Decide what you're going to build today, write out some directions to yourself
and follow them. 


 
 
