## Cooking with Redux

Demo of Music Studio app with Rails API
Data model
Create React App
- 
[Rails API example blog](https://www.fullstackreact.com/articles/how-to-get-create-react-app-to-work-with-your-rails-api/)

NPM  / Package.json / React / Redux / Thunk installs
Configuration

Approach to  folders, naming convention, "the Store"

The Redux Store
	- importing actions
	- actionTypes file to ensure accuracy
	- separate service files for each major data group
	- separate reducer files for each major data group
	- index of actions

Redux state vs Local state
	- Database crud
	- Temporary state
		- Modal or backdrop open or closed
		- Toggling local state

Redux state flow
Action --> API --> Database
			 --> Redux Store

## Features
Add feature to Redux State
Add API service
Add action(s) to access API service
Implement a custom spinner
Use local state to toggle a modal and background

--------------------------------------------------------------
## demo of full project
tour layout of:
- data model 
- blog post article for setup
	- api
	- rails app
	- client app

## project layout
- react folder strategy used
- redux config strategy used
	- separate folder for store
		- sub-folder for actions
		- sub-folder for reducers
		- sub-folder for services
		- sub-folder for actions

## smaller version of project
- Students data from API
- Teachers list hard coded in Student reducer
- Add 

=======================================================================================
=======================================================================================
=======================================================================================
=======================================================================================
## add a feature "message" to the whole flow
- add our default message to Redux store
- mapStateToProps, to show message in students view
- create a function ( onChangeMessage(data) ) for updating the message
- pass that function to a child <ChangeMessage /> component
- create the  child component 
	- (pure component, stateless:  <ChangeMessage />)
	- it receives a function in props

- in parent component (Students.js) we handle the returning data from the (<ChangeMessage />) child component
	- /store/actions:
		- add an action to handle data
			- edit index.js 
			- edit actionTypes.js (action types constants file)
			- edit studentActions.js (reducer)
		- use mapDispatchToProps to:
			- import this action into Students.js
			- make this action available to our handler function

	- /store/reducers:
		- edit studentReducer.js
		- StudentService.js (not sending data to API, but this is where we would do it)
	
	- update Redux state with (message data)
	- see the updated Redux state message in Students view



	--------------------------------------------------------------
## demo of full project
tour layout of:
- data model 
- blog post article for setup
	- api
	- rails app
	- client app

## project layout
- react folder strategy used
- redux config strategy used
	- separate folder for store
		- sub-folder for actions
		- sub-folder for reducers
		- sub-folder for services
		- sub-folder for actions

## smaller version of project
- Students data from API
- Teachers list hard coded in Student reducer
- Add 


## add a feature "message" to Redux only, not hitting the API
1. Add default message to Redux store
2. Add connect, mapStateToProps, (to show message) in students view: Students.js
3. Create a function ( onUpdateMessage(data) ) for updating the message
4. Pass onUpdateMessage(data) to the child (ChangeMessage) component as a prop
5. Create the child component (ChangeMessage)
6. Stateful class component, so that local state can handle form update 'live'

7. In parent component (Students.js) we handle the returning data from the (ChangeMessage) child component
	- Add an action to handle data in /store/actions
		- edit index.js 
		- edit actionTypes.js (action types constants file)
		- edit studentActions.js (reducer)
	- use mapDispatchToProps to:
		- import this action into Students.js
		- make this action available to our handler function

8. Add state key/value for 'message' in studentReducer.js 
	- /store/reducers:
		- edit studentReducer.js
		- StudentService.js (not sending data to API, but this is where we would do it)
	
	- update Redux state with (message data)
	- see the updated Redux state message in Students view

## add a feature "Logs" to Redux, including editing the API and data model
There are several steps that must work in coordination for this.
We will list them out here in order, to aid with troubleshooting and iterative development.
Todo list: 
1. 	Add migration for Logs table to Rails API
2.	Add ActiveRecord relationships to Rails models
3.	Add ActiveRecord relationships to Rails serializers
4.	Add logs_controller
5.	Update app/config/routes.rb with logs routes needed, within API group
6.  Update db/seeds.rb with new data for Logs
7. 	
