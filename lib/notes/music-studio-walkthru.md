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