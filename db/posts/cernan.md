
***
***
***
***
***
***


Hi Cernan, 
We are set to meet tomorrow at 330PM Pacific Time
My project [repo is here](https://github.com/smithWEBtek/piano-student-api)

Slack username:  @smithwebtek

Below are 2 questions about refreshing data from Redux state and using routing to trigger refetch of Redux state. 

Below that I have summarized the refactoring done since last meeting. 

If you have any quick feedback, I would be grateful!

-Brad Smith



---------------------------------------------------------------------------------------
### 1. Re-fetching Redux state via componentDidMount:
For each of my main data Objects ( ie....Students, Teachers, Resources, Lessons), my current pattern is to fetch Redux state for that Object in componentDidMount within each respective file...Students.js, Teachers.js, Resources.js, Lessons.js, which is then passed to child components to list all objects. 

For example: 

```
  componentDidMount() {
    this.props.onFetchStudents()
  }
```

I experimented with only fetching Redux state in a higher component like App.js, and I found that I still needed to fetch current state for my objects in each file (ie. Students.js, Teachers.js, Resources.js, Lessons.js), otherwise my components would not render with data.

QUESTIONS: 
### Am I using best practice for fetching data from Redux state?
### Is there anything wrong with fetching state for these objects in componentDidMount for each one respectively, instead of doing it all in App.js?
### Since I am NOT re-fetching using the API, but only re-fetching updated Redux state, is there any harm in this approach?



---------------------------------------------------------------------------------------
### 2. Am I using best practice for routing after updating?
After an update to a Student for example, I want to be re-render on the StudentsList page (/students), showing the updated list of all students, including the update I just made. The only way I found to do this was to navigate away from that page and then navigate back to it, by pushing 2 history entries after I complete my update in studentActions.js.  (This works because each of the data groups (Students, Teachers, Resources, Lessons) have 'componentDidMount' where I am fetching their current state.)

I am using 'history.push(), and successfully passing in history:

first to:  history.push(`/`)
then to:     history.push(`/students`) 

code is below, or [here on Github](https://github.com/smithWEBtek/piano-student-api/blob/master/client/src/store/actions/studentActions.js) on lines 71-72

```javascript
    export const updateStudent = (data, history) => {
  return dispatch => {
    dispatch(updateStudentStart())
    StudentService.updateStudent(data)
      .then(response => {
        dispatch({ type: actionTypes.UPDATE_STUDENT, updatedStudentData: response })
        history.push(`/`) // navigating 'away' from current page...
        history.push(`/students`)   // having 'navigated away', this causes componentDidMount to re-fetch Redux state
        dispatch(updateStudentSuccess())
      })
      .catch(error => {
        dispatch(updateStudentFail(error))
      })
  }
  ```

QUESTIONS:
### Is this an anti-pattern to be navigating away from /students, then back to it, just to force a re-fetching of Redux's state.students? 
### Is there another way that I am not aware of ? 
 
---------------------------------------------------------------------------------------

### Summary of the refactoring I have done since our last meeting.
Incorporated the 'like' feature using a stateless component 'StudentRow', AND database / API persistence

Refactored the 'store' actions, reducers and service files for Students, Teachers, Resources and Lessons as follows:
    - removed redundant code from actions, an action is now declared and then used by reference,
    or it is declared as it it being used ( see studentActions, fetchStudents for an example )
    - refactored Reducers to update state for an object individually
    - refactored Reducers to use Object.assign() instead of utility function, for better readability
    - added .catch error handling to all actions for (students, teachers, resources, lessons)

Added drop down functionality for all create and edit modals, where Teacher or Student select is used

Added TeacherRow as a stateless component (child component to TeachersList), like StudentRow and StudentList

Removed the show and hide of main lists which depended on local state
    - It was causing issues with components appearing as expected
    - Lists now render from the Main Nav buttons
    - Individual Student, Teacher, Resource or Lesson now render from links within the main lists

---------------------------------------------------------------------------------------