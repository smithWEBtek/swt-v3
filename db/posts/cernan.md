
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
#### Am I using best practice for fetching data from Redux state?
#### Is there anything wrong with fetching state for these objects in componentDidMount for each one respectively, instead of doing it all in App.js?
#### Since I am NOT re-fetching using the API, but only re-fetching updated Redux state, is there any harm in this approach?



---------------------------------------------------------------------------------------
### 2. Am I using best practice for routing after updating?
After an update to a Student for example, I want to re-render the StudentsList page (/students), showing the updated list of all students, including the update I just made. The only way I found to do this was to navigate away from that page and then navigate back to it, by pushing 2 history entries after I complete my update in studentActions.js.  (This works because each of the data groups (Students, Teachers, Resources, Lessons) have 'componentDidMount' where I am fetching their current state.)

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
#### Is this an anti-pattern to be navigating away from /students, then back to it, just to force a re-fetching of Redux's state.students? 
#### Is there another way that I am not aware of ? 
 
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


### Updated as of Tuesday, 3PM Eastern

#### Added functionality: EditStudent to:  'Student.js' show page
  Added Redux state for this page, including:
    this.props.teachers, to provide date for 'teacherSelect' dropdown function
    this.props.students, for finding 'student' either via 2 ways:

      1. <Link /> from Student show page, passed in this.props.match.params.id
      2. student_id passed in from 'Students.js'
      
    In each case, the student is found in Redux state, and local state is set with that student's attributes

#### Routing after an 'Edit' update
  Desired behavior was to end up back on the page where you began your Edit:
    EditStudent from Student.js (show page), should bring you back to Student.js (show page), with updated data.
    EditStudent from Students.js ("index page"), should bring you back to Students.js ("index page"), with updated data.

##### Using 'history.goBack()' in the StudentActions.js file, in the updateStudent() function, solved this. 
  history.goBack() to the rescue! 
  this navigates you back to wherever you started your "Edit student" operation.
   
### BUT...

#### Routing after a 'like' update
  It then produced the following undesired behavior:  
  When clicking "like" button, on a StudentRow in the StudentsList, in the Students.js ("index page")...
  ...the StudentActions.updateStudent() function would send you "back" to whatever page you were on before you went to Students.js

##### Desired behavior:  
  When you click on "LIKE" for a particular student:
  
* I want to remain on the Students.js page
* showing all students, with the only difference being:
* that the "like" count incremented for the clicked ('like'd) student row

##### SOLUTION: 
```javascript
  //********LIKE_STUDENT handling****************
  likeStudent = (id) => {
    let { history } = this.props
    history.push('/students') 
    // this "primes the history pump", 
    // so that "history.goBack()" in StudentActions.js, updateStudent(), 
    // doesn't screw up User experience

    let student = this.props.students.find(stu => stu.id === id)
    let data = Object.assign({}, student, { likes: student.likes + 1 })
    this.props.onUpdateStudent(data, history)
  }
  ```


#### Implemented the above Student changes, to Teacher, Resource and Lesson



 

