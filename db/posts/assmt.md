### Current Status

#### Updating component via:  
      dispatch action => reducer => redux state => component(s)
      dispatch action => api => reducer => redux state => component(s)

my original todo list:

[X] change this to use Object.assign()
[X] then update the student via (action to API) and (action dispatch to reducer)
[X] the component should be getting state from Redux
[X] the individual student should be updated via action
[X] Redux state should be updated for the single student, instead of relying on fetching all students
[*] and this all needs to happen while retaining Routing
[?] it may be neccessary to pass 'location' as a prop, to retain Routing behavior
[] https://reacttraining.com/react-router/web/guides/dealing-with-update-blocking 
[] 
[X] keep the new component <StudentRow />
[X] add perisistence to DB in this branch
[X] then test the 'likeStudent' function, action, service, api, reducer, redux state, refresh view


[X] go through the other reducers and actions files to do the equivalent
[X] get this effen disk to stop spinning so hard


[] write the blog about fetch
[] write the blog about how data flows between:
  API, Action(s), Reducers, Redux State, Local State, Routing


### Observations on Actions:
I have setup "actionStart", "actionSucces", "actionFail" for a given action, with the main "action" referencing the other 3 (start, success, fail).

I was not thinking through how these all worked, and in some cases I had either redundant actions, or improper use of the responses that came back from a given fetch request.

I refactored based on: 
1. How each action is dispatched
2. How each action interacts with Redux
3. What response(s) do I expect from a given action
4. How to tie the 3 phases to the main action
  start, success, fail  and the main action being either Create, Update, Fetch or Delete ( in the context of this CRUD application )
5. The API is there for  specific reasons to serve data to the app, but the API and the actions we use to interact with it, exist based on what data endpoints we want, and the operations required in our application. 

### Observations on Reducers:
I created a lot of code by assuming that CRUD operations would be similar to a Rails app and controllers, with nearly equivalent actions in API calls, actions files and reducer files. In researching further, I now see all 3 of these types of files (API, actions, reducers) as unique to React/Redux and unique to the actual operations required in the context of this application. 

#### For example:
- There is no need for a "FETCH_STUDENT" reducer action.
- Since we FETCH_STUDENTS (plural), all students are in Redux state, and you just need to programmatically look up a student via ID.

(Which is what I've done all along, not realizing that I had unneccessary code in my reducer. 
 It was not causing errors, but showed my ignorance of the true role of the reducer.)
Reducers are now strictly CRUD or specialty actions if needed.
I had created actions and functions for every typical Rails action, wrongly assuming that the Redux store would behave similar to a Rails controller. 

I see the Redux store now more clearly as a listing of things, not as the originator of API actions, just a pristine copy of current (Redux) state.

I see the actions we dispatch to Redux store, via reducers, as more descriptive in nature, more like an adjective "describing" what happened, and the only actions take are to update state via a copy of state, and a copy of a particular state nested attribute of it requires updating. 

### Observations on API service calls:
https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API


