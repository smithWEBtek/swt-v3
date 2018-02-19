



Learn github API while building smithwebtek wiki
Create github 'gist' for articles

Stop using Markdown files for posts, instead use html.erb files
Use a template for sample_post.html.erb
Feed the template from the wiki database

Post:
1. Create an HTML template for post. 
2. /posts/show has the layout and surrounding web parts
3. Create github gist for each code sample


Technical Knowledge workflow: Bookmark => Entry => HelloWorld => App => Blog
  Bookmark 
    Capture every thing in chrome bookmarks
    Auto-export bookmarks to wiki
		Wiki entry includes end up with 1 or all of these:
			* entry in Wiki (minimum)
			* tag(s) 0 to multiple
			* hello world tutorial
			* project
			* demo app
			* blog post
		
		Data model:
			tag:	id, name
				ex:	javascript, ruby, regex, node, react, css, error handling, linter, editor,  

			entry:	id, name, description
				has_many :tags
				has_many :apps, through: :tags
				
			project:	id, name, description, repo, url
				has_many :tags
				has_many :entries, through: :tags
					
			post:	id, name, description, repo, url

			group: id, name, description
				has_many :tags
				has_many :apps, through: :tags
				has_many :entries, through: :tags

Javascript
	React
	Redux
	Vue
	Node

Ruby
	ref
	tool
	pattern


  2: wiki: 
    categorize and store in this wiki
    use Cloudinary to store related files if needed
    follow wiki structure
    connect it to other wiki categories/groups/topics via tags
  3: hello world: 
    do the hello world first excersize with this topic
    make it actually work, use it as intended, do an example
    save the example (code, files, ideas, configurations, urls, passwords, API keys, etc.) in a format that will refresh your mind when you find it again in the future

  4: blog post about learning it
  5: go deeper in a project with it

  

#Reading  
  Pragmatic Programmer
  Code Smells

#GoDeep RTFM a-z 
  JS:     You Don't Know JS
  React:  FullStact React
  Redux:  Docs and Videos
  Regex:  Blogs, tutorials
  Bootstrap
  D3

    

 
 

=======================================================
House keeping
	Invoice Heritage Baptist
	Invoice: check on St Mary's
	Bank deposit
	Scottrade acct move money
	SmithPiano mailer
	Pay bills
	Property:	Ready for sale by April 2018 Attic, soffits, barns, poolhouse, house interior
		Make shelves for kitchen pantry cabinet:  14 3/8" x 22 3/4"
	Prep:			Ready to bugout; Off-grid power, heat, food & water; Mobile bugout vehicle; Self defense; Malaysia option

Health
	Planning & Solitude 	
	Work out at PF
	170lbs Vegan, Eat, drink, exercise, meditate, read; Family
	Hold your tongue, Use your mind
	Stop performing for people
	
=======================================================
Reading list
    Launch school
        Read Mastery - George Leonard
    Do Coursera - Learn How to Learn course
    The Guiding Hand
    Governed by Mastery learning principles
    Governed by A Mind for Numbers learning principles
=======================================================
SmithPiano
	SmithPiano mailing
	Tune: 		1 per day	Postcards, emails, letters to clients, teachers, churches, schools, music stores
	Teach: 		1 per day	Studio, site, resume, samples, refs; Content: Jazz Piano, Intro, Left Hand, Improv, Tech
	Play: 		Brad Smith Trio: My grooves, tunes and gigs

=======================================================
Tech
	Finish Udemy React course
	Udemy Node course
	Udemy Python course
	Udemy PHP course
	[Redcarpet](https://github.com/vmg/redcarpet)

=======================================================
Projects
	Get Router working on Heroku and Firebase
	SWT-SP4: 									new smithpiano scheduling site
	Service Scheduler: 				Mobile, GoogleAPI, OnlineDB
	Curation Tech Library: 		funnel all tech leads
	Interactive Visual Stim: 	D3, Codepen, Jud
	Multiple API connector: 	blind date via unconventional API data 
	POS Store:								RegisterInventoryBarCodeScan
	Job Search CRM:						Dashboard & curation
	Music Studio:							Admin, Library, ParsePDF, LoadPDF, LessonView

=======================================================
Flatiron
	Rails, OmniAuth, Devise, Pundit, Nested Forms
	jQuery practice
	Sinatra
	TA prep track

=======================================================
Career prep track - Martha Bloem-Reddy
	Resume, LinkedIn, Blog, Branding, Portfolio
	Breadth Topics: Algorithms, Trivia, Breadth, Topics, PHP, Python, Java, D3, Docker, Node, MEAN, SQL, C#, .NET, ColdFusion, Angular, Vue, git chops
  Alog practice: Codewars, Hackerrank
  Incorporate tips from "How to be a No-Brainer Hire"
	What Every Developer Should Know: watch first videos, read first few articles

=======================================================
Blog
	Outline a blog
	Move an existing blog further along
  Blogging workflow using existing placeholders in this app
  	Use the 'blank.md' template for basic outline
		, prefilled with styles 
  
	organize wiki data model
    feed the funnel with topics, sub-topics, ideas that are ripe
    prioritize the funnel, pick one, elaborate its outline and summary
    pick one of those and fill in some detail on first few sub-topics

tekWiki
tekAppt
tekPos
tekTutor

=======================================================
smithWEBtek
	Get a paid project	Web development; portfolio worthy; referenceable
	Set up hosting	LunarPages, AWS, Heroku, Netlify, Firebase
	Steve Phaneuf	Build a POS w/data backend that he can sell

=======================================================
Network	
	CodeForBoston													open source coding
	Manchester JS													network
	Boston JS / ProjectJS									network
	Dave Hall	Tech, Forcivity							network
	Ken Steinberg, Cambridge Associates		tech mentor, network
	Matt Zagaja, CodeForBoston						tech mentor, network
	Alex Merritt													tech mentor, network
	James Rogers, Wayfair									network, job contact


=======================================================
Dream Job Description
	Iterative prototyping meaningful projects daily, weekly, monthly
	Javascript, RoR, React, Redux, Python, PHP, Java
	Small, nimble group, led by leaders/teachers
	Study growth path directed by leaders/teachers
	Mix of onsite and remote

	Build things that help people:
		• ...who need help and are already trying to help themselves
		• ...to reinforce family, duty, responsibility.
		• ...to make music, teach music, experience music

	Data modelling 
	Business modelling
	Apps for small business data and daily operations
	Translating business logic to project specs
	Robotics related(?)
	Internet of Things related(?)
	Non-profit, mission-related:
		• special needs people
		• 3rd world countries
		• elder care
		• youth training
			○ building trades, coding, music and art
			○ citizenship, history, finance, health, philosophy
		• middle age retraining
		• survival life skills / community building

=======================================================
