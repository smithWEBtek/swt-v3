#### Rails with jQuery Assessment
This post is an overview of the assignment to create a jQuery front end to an existing Rails app. 


[Video Walkthrough of Diet Planner v8](https://www.youtube.com/watch?v=YT8r_w4AifI&t=11s)


My choice was the Diet-Planner application, which tracks Users' Diets, Foods, Meals, Logs in a Rails app with a Postgresql backend, authorization via Devise and other goodies. 
The app is currently [on Heroku here](https://diet-planner-v8.herokuapp.com)
 
#### Key Points

The app has the common functionality of index, show, edit, new, create, update, destroy for all models. 
The data model is shown in this [ERD diagram](http://res.cloudinary.com/smithwebtek/image/upload/v1494192278/diet-tracker/diet-planner-v8/erd.pdf)

#### The data model is summarized as follows: 

  Users register and track their Diets, Meals, Calories and Log their experiences
  Users participate in groups of like-minded Dieters, to compare calories consumed, avg calories, etc.

Data model
  Users
  Foods
  Groups
  Diets
  Meals
  Quotes

#### Active Record relationships

  User has_many :meals
       belongs_to :diet

  Meal belongs_to :user
       belongs_to :food 

  Food belongs_to :group
       has_many :meals

  Group has_many :foods

  Diet has_many :users

  Log belongs_to :user
      has_many :meals, through: :user

	Quote belongs_to :celeb(celebrity), :verb, :adjective, :food, :diet, :phrase

The "Quote" model is where most of the required jQuery / AJAX / JSON functionality is done. 

####  Requirements

The following specs were requirements, and I'll go through each one with a few examples of meeting the requirement.

####  Use jQuery for implementing new requirements

	*The following files use jQuery:
		add_celeb_food_diet_phrase.js
		index_and_show.js
		quotes.js

####  Include a show resource rendered using jQuery and an Active Model Serialization JSON backend.

	*The following active model objects have data rendered for show view:
	*User

####  Include an index resource rendered using jQuery and an Active Model Serialization JSON backend.

	*The following active model objects have data rendered for index views:
	*Users, Meals, Mealnames, Foods, Groups, Diets

####  Include at least one has_many relationship in information rendered via JSON and appended to the DOM.

	*The following active model object is rendered with JSON, showing has_many relationships:
	*Users
		-has_many :meals, :foods, :logs
	*The Users index is rendered via jQuery / AJAX / JSON.
	*The data shown is then linkeable for individual User, also via jQuery/AJAX/JSON
	
####  Include at least one link that loads or updates a resource without reloading the page.

	*The following active model objects are loaded or updated without reloading page:
	*Users, Meals, Mealnames, Foods, Groups, Diets
	*Random JSON Quotes, Random HTML Quotes, New Quote, Clear Quotes
	*Create Celeb, Create Food, Create Diet, Create Phrase
		-these items are saved to the database upon display, and available for inclusion in 'random quote generation'

####  Translate JSON responses into js model objects.

	*This is demonstrated with the 'New DropDown Quote' button and related code
		-the form and resulting Quote, is shown via AJAX, and save to the database
	*New CelebMeal
		-this is a JavaScript class CelebrityMeal, which is scripted within '/layouts/application.html.erb', because Heroku was not successfully finding the code. 

####  At least one of the js model objects must have at least one method added by your code to the prototype.

	*this is demonstrated on the class CelebrityMeal, with a custom method 'customQuote', which creates another unique Quote based on the values submitted in the form, all via jQuery/AJAX/JSON
	
####  You have a large number of small Git commits

	*As of this writing, the repo has 125 commits directly related to this version of the app.

####  Your commit messages are meaningful

	*All of the commit messages are meaningful in terms of what was accomplished with that commit

####  You made the changes in a commit that relate to the commit message

	*While not 100%, the amount of changes related to commit messages is much higher than previous projects.
	*I still do have the tendency to jump around fixing things, vs staying focused on a single feature.

####  You don't include changes in a commit that aren't related to the commit message

	*Not 100% here, but far better than in previous projects. 

#### Code Example:


The following javascript file shows the current level of the programming. 
Much of it is verbose, using low-level AJAX methods, with repetitive explicit naming of functions. 
This is largely due to my newness at JavaScript, as well as the multiple moving pieces involved. 
It does make the code more readable and understandable. 

##### Essentially there are the following types of functions.

Functions that 'listen' for a particular element of the DOM (Document Object Model, or web page) to be clicked.
Sometimes, they trigger other functions, or retrieve a form form the server to be filled by the User, like this:
Example:

```javascript
function listenForNewQuote(){
	$("#new_quote_button").on("click", function(e) {
 		e.stopImmediatePropagation();
		e.preventDefault();
		$.ajax({
			type: 'get',
			url: '/quotes/new',
			}).success(function(response){
			clearResponseAreas();
			$("#response_area").html(response)
		newQuote();
		 })
	});
}
```

Some functions watch 'buttons' or DOM elements, and when clicked, the 'listener' functions trigger internal server methods, such as this one which retrieves 5 'random quotes', by sending a 'GET' request to a specific route in the Rails application. That route, points to a Controller, which fires a method, to produce the 5 random quotes and send them back to the waiting AJAX function, for display in the DOM. 

Example:

```javascript
function quotesJSON(){
	$("#random_json_quotes").on("click", function(e) {
	$.ajax({
		type: 'get',
		url: '/random_quotes',
		dataType: 'json',
		success: function(response){
		clearResponseAreas();
		for (var i = response.length - 1; i >= 0; i--) {
			$("#response_area").append(response[i] + "<br>");
			}
		}
	});
	e.stopImmediatePropagation();
	e.preventDefault();
	});
}
```

Some functions POST data to the server, mostly from forms filled by the User, to be saved to the database.
Example:

```javascript
function newQuote(){
	$("#response_area form").on("submit", function(e){
	 	e.stopImmediatePropagation();
		e.preventDefault();	
		$.ajax({
			type: 'post',
			url: '/quotes',
			data: {
				authenticity_token:	$("input[name='authenticity_token']").val(),
				quote: {
					celeb: $("#quote_celeb").val(),
					verb: $("#quote_verb").val(),
					adj: $("#quote_adj").val(),
					food: $("#quote_food").val(),
					diet_id: $("#quote_diet_id").val(),
					phrase: $("#quote_phrase").val()
		  		}
		  	}
			}).success(function(response){
			clearResponseAreas();
			$("#response_area").html(response);
		});
	});
};
```
Some functions trigger pre-planned Ruby methods, that produce data results, and display them.
	
	There are a few in this application: 
		1. Random JSON Quotes
		2. Random HTML Quotes
		3. DropDown Quotes
		4. User Generated Quotes
		5. Class based Quote, using JavaScript Object Model and method that adds to its prototype
			* as opposed to writing out specific functionality in every script, the class object allows specific functionality to be added to the prototype (like a blueprint for an instance of the object).
			* the example here is a class CelebrityMeal, which takes items from the database to construct an instance of 'CelebrityMeal'.  Then, because the class Celebrity Meal was written with a method CustomQuote, we can call the customQuote function on any instance of CelebrityMeal, to get the displayed results.
			* this is demonstrated by clicking the button on home page: "New CelebMeal"


Some functions simply clear out data from the DOM, to keep the user experience as expected, for example: 

Example: 

```javascript
function clearResponseAreas(){
	$("#response_area").html("")
	$("#dropdown_quote_response_area").html("");
	$("#celeb_meal_response_area").html("");
}
```


##### full script:
```javascript
$(function(){
	quotesJSON();
	quotesHTML();
	quotesClear();
	listenForNewQuote();
	listenForNewDropdownQuote();
	newCelebMeal();
	clearResponseAreas();
});

function clearResponseAreas(){
	$("#response_area").html("")
	$("#dropdown_quote_response_area").html("");
	$("#celeb_meal_response_area").html("");
}

function quotesJSON(){
	$("#random_json_quotes").on("click", function(e) {
	$.ajax({
		type: 'get',
		url: '/random_quotes',
		dataType: 'json',
		success: function(response){
		clearResponseAreas();
		for (var i = response.length - 1; i >= 0; i--) {
			$("#response_area").append(response[i] + "<br>");
			}
		}
	});
	e.stopImmediatePropagation();
	e.preventDefault();
	});
}

function quotesHTML(){
	$("#random_html_quotes").on("click", function(e) {
	$.ajax({
		type: 'get',
		url: '/random_quotes',
		dataType: 'html',
		success: function(response){
		clearResponseAreas();
				$("#response_area").append(response);
			}
		});
	e.stopImmediatePropagation();
	e.preventDefault();
	});
};

function quotesClear(){
	$("#quotes_clear").on("click", function(e) {
		$.ajax({
			type: 'get',
			url: '/clear_quotes',
		}).success(function(){
		clearResponseAreas();
		});	
	e.preventDefault();
	});
}

function listenForNewQuote(){
	$("#new_quote_button").on("click", function(e) {
 		e.stopImmediatePropagation();
		e.preventDefault();
		$.ajax({
			type: 'get',
			url: '/quotes/new',
			}).success(function(response){
			clearResponseAreas();
			$("#response_area").html(response)
		newQuote();
		 })
	});
}

function newQuote(){
	$("#response_area form").on("submit", function(e){
	 	e.stopImmediatePropagation();
		e.preventDefault();	
		$.ajax({
			type: 'post',
			url: '/quotes',
			data: {
				authenticity_token:	$("input[name='authenticity_token']").val(),
				quote: {
					celeb: $("#quote_celeb").val(),
					verb: $("#quote_verb").val(),
					adj: $("#quote_adj").val(),
					food: $("#quote_food").val(),
					diet_id: $("#quote_diet_id").val(),
					phrase: $("#quote_phrase").val()
		  		}
		  	}
			}).success(function(response){
			clearResponseAreas();
			$("#response_area").html(response);
		});
	});
};

function listenForNewDropdownQuote(){
	$("#new_dropdown_quote_button").on("click", function(e) {
 		e.stopImmediatePropagation();
		e.preventDefault();
		$.ajax({
			type: 'get',
			url: '/new_dropdown_quote',
			}).success(function(response){
			clearResponseAreas();
			$("#dropdown_quote_response_area").html(response)
		newDropdownQuote();
		 })
	});
}

function newDropdownQuote(){
	$("#dropdown_quote_response_area form").on("submit", function(e){
	 	e.stopImmediatePropagation();
		e.preventDefault();	
		$.ajax({
			type: 'post',
			url: '/new_dropdown_quote',
			data: {
				authenticity_token:	$("input[name='authenticity_token']").val(),
				quote: {
					celeb_id: $("#quote_celeb_id").val(),
					verb_id: $("#quote_verb_id").val(),
					adj_id: $("#quote_adj_id").val(),
					food_id: $("#quote_food_id").val(),
					diet_id: $("#quote_diet_id").val(),
					phrase_id: $("#quote_phrase_id").val()
		  		}
		  	}
		  }).success(function(response){
			clearResponseAreas();
			$("#dropdown_quote_response_area").html(response);
		});
	});
};
 
function newCelebMeal(){
	$("#new_celeb_meal_button").on("click", function(e) {
 		e.stopImmediatePropagation();
		e.preventDefault();
		$.ajax({
			type: 'get',
			url: '/one_random_quote',
			dataType: 'json',
			}).success(function(response){
			clearResponseAreas();
				var celeb = response.celeb.name; 
				var verb = response.verb.name; 
				var adj = response.adj.name; 
				var food = response.food.name; 
				var diet = response.diet.name; 
				var phrase = response.phrase.content;
				var celebMeal = new CelebrityMeal(celeb, verb, adj, food, diet, phrase);
			$("#celeb_meal_response_area").html(celebMeal.customQuote());
		 })
	});
}
```
 
#### Issues Overcome

I found the following challenges:
	* Difficulty managing various moving parts
	
	* Rails Routes, Controllers, Views, Models, Methods and ActiveRecord relationships
		- these are all the things the provide Rails goodness, and require complete refresh of the web page to view
		- as you add functionality to the JavaScript side of things, you have to keep abreast of how Rails routes, processes and returns things.
	
	* JavaScript: Having begun my programming with SQL Server, some HTML and some database scripting, I found Ruby to be a wonderful way to learn, because of its conversational nature. You can literally "talk" Ruby code as you reason through how things function.  Add to that the Rails conventions and you begin to absorb the language intuitively.  Your eyes and instincts begin to guide you through coding and troubleshooting. Sometimes you just get a hunch that a certain thing will work and it does; other times you sense a dead end and refactor. 
	
	* With JavaScript I do believe that intuition will come, but for me a little longer. 
	
	* However, my mileage may vary as this was my experience learning a 2nd programming language after immersion in the first. I think that the common threads of programming vernacular will start to guide me through new languages and that the learning curve will be easier than the first few. 
	
	*Debugging JavaScript, Ajax, JSON within the Rails ecosystem can be complicated. But once you get through a few examples of the full data life cycle through js functions, in and back from Rails, navigating the DOM and keeping track of "THIS" as it changes state, there does seem to be a finite number of issues that are usually the culprit. My style is based on being a craftsman all of my life, so we learn by doing something many times. Brute will power and tenacity go a long way. 


#### What I Found

	* I found that sometimes it was not clear why certain JavaScript functionality was breaking, or not refreshing, or just laying there on the page unflinching when I expected it to clear, or update. 
	
	* I found that if you type out your next few moves, deciding what you want in functionality, things go better. Write psuedo code, simply dreaming out loud as to what you want the code to do; then bite off a small chunk to make it 'real' with simple working code. 
	
	* I found that you are much better off doing multiple commits to github, organizing your work so that your comment doesn't need to be huge, because you are making commits often enough. 

		1. Decide what you want to code
		2. Write down pseudo code explanation, organizing statements into somewhat defined actions
		3. Bite off an easy part, make data appear somewhere, get a view to work, get a method to return something.
		4. Hook one thing to another thing, simply displaying an intentional piece of code/data.
		5. Take the time to name things consistently
			- use instinctive names, brief but descriptive
			- if you make several of things of similar type, be on the look out for tidy naming conventions
			- verbose, working, consistently named code...may not be sexy, but other experienced coders will appreciate that they can 'get' what you wrote quicker, so they can help you improve.
			- verbose, working, consistently named code...gives the rest of the world something tangible to work with, making YOU more 'workable with'

	* I found that you can make an entire Rails application DANCE BABY!, without leaving the home page.


#### Summary

I'm looking forward to more with JavaScript, having just scratched the surface with this application. 
I see now why there are so many JavaScript frameworks out there, because of where it fits in web development, and the fact that you can slip it in anywhere. Rails conventions have made it far more scalable than if it was left to 'grow your own', same goes for JavaScript, so I'm looking forward to delving into React next. 







