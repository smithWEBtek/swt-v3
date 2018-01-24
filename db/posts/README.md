## README The final version of this readme will be available by Wednesday, Jan 24 10:00PM EST.

Brad Smith 

brad@smithwebtek.com

www.smithWEBtek.com

The application was built with Rails 5.0 in API mode.

The React app at app/client was created with [**create-react-app**](https://github.com/facebook/create-react-app)

The gem 'foreman' was used to implement the React client app within the same project, using [this blog post](https://www.fullstackreact.com/articles/how-to-get-create-react-app-to-work-with-your-rails-api/) as a guide. 

There are 2 'procfile's at the root of the Rails app, where you can control how the app starts on Heroku, or how it starts locally, for development. 

Also, within the app/client/src/store/services folder, there are 5 files that are the point of interaction between the React app and the API, whether on Heroku or local.

```bash
├── LessonResourceService.js
├── LessonService.js
├── ResourceService.js
├── StudentService.js
└── TeacherService.js
```



At the top of each of these
 

## SEED DATA and related RAKE tasks
There is a seeds.rb file in app/db/seeds.rb with sample data.
There are 3 rake tasks that incorporate this seed data:

rake db:backup
creates a �time stamp� named: backup<time as number>.rb

located in /app/db/data

rake db:dcms
this will: D DROP database, C CREATE database, M run MIGRATIONS, S load SEED data


rake db:hdcms
this will: H Heorku (pg reset), D DROP database, C CREATE database, M run MIGRATIONS, S load SEED data

## API and interacting with the Rails app 'back-end'
The backend data (in JSON format) can be seen at:
       127.0.0.1:3001/api/students
	
The project loads all in one repo, with the front-end client using React/Redux in the /app/client folder.

You can navigate to the /client folder to interact with the React app on its own.
To see the React app, navigate to /client folder and run:

$ npm install
$ npm start

To view:
FORK and CLONE this repo

run: rake db:setup
run: rake db:dcms
this will: D DROP database, C CREATE database, M run MIGRATIONS, S load SEED dat
run: rake start

The React app will show appear the in browser at: http://localhost:3000/

To view raw API data, go to: 



This README would normally document whatever steps are necessary to get the application up and running.

Things you may want to cover:

Ruby version

System dependencies

Configuration

Database creation

Database initialization

How to run the test suite

Services (job queues, cache servers, search engines, etc.)

Deployment instructions

...
