
## BLOG POST: JavaScript Array Methods

#### Common ways to manipulate arrays in JavaScript, including mutating the original array or returning a copy of the original, whether modified or not.

The foll
method	#args	action	returns	mutates y/n?
.push	1+	adds element(s) to end of arrary	count of array elements	YES, array gains element(s)
.slice	1	slices array at index(arg)	returns sliced elements	NO, array remains unmutated
	 (NOTE: if you pass in multiple args, it takes the last one as argument.)
.splice	1 or 2	NOTE: if 1 arg, it returns array starting at index = arg1.	returns spliced elements defined by the arg(s)	YES, array loses spliced (returned) elements.
	NOTE: argument is index of element in array.	NOTE: if 2 args, it returns array starting at index= arg1, including arg2 elements to the right.
.pop	1	removes last element of array	removed element	YES, array loses element
.shift	1	removes first element of array	removed element	YES, array loses element
.unshift	1+	pre-pends element(s) to start of array	count of updated array	YES, array gains element(s)
[...array_name, arg]	1	appends 'arg' to end of array	appended array	NO, array remains unmutated
[arg ,...array_name]	1	pre-pends 'arg' to beginning of array	pre-pended array	NO, array remains unmutated

<table border="1">
  <tr>
    <td>&nbsp;</td>
    <td>Knocky</td>
    <td>Flor</td>
    <td>Ella</td>
    <td>Juan</td>
  </tr>
  <tr>
    <td>Breed</td>
    <td>Jack Russell</td>
    <td>Poodle</td>
    <td>Streetdog</td>
    <td>Cocker Spaniel</td>
  </tr>
 
</table>


<!-- pasted from original view file... -->

<div class="wrapper wrapper_padding clearfix">
  <div class="row">
    <div class="col-lg-12 body-text blockquote">
      <h2>JavaScript Array Methods</h2>
      <h4>Common ways to manipulate arrays in JavaScript, including: </h4>
      <ul>
        <li>
          mutating the original array
        </li>
        <li>
          returning a copy of the original array
        </li>
        <li>
          whether the original array is modified or not
        </li>
      </ul>

      <h3>function</h3>
      <p>what it does</p>
      <p>what you pass to it</p>
      <p>how it operates on the original array</p>
      <p>what it returns</p>
      <p>value of the original array</p>



      method #args action returns mutates y/n? .push 1+ adds element(s) to end of arrary count of array elements YES, array gains
      element(s) .slice 1 slices array at index(arg) returns sliced elements NO, array remains unmutated (NOTE: if you pass
      in multiple args, it takes the last one as argument.) .splice 1 or 2 NOTE: if 1 arg, it returns array starting at index
      = arg1. returns spliced elements defined by the arg(s) YES, array loses spliced (returned) elements. NOTE: argument
      is index of element in array. NOTE: if 2 args, it returns array starting at index= arg1, including arg2 elements to
      the right. .pop 1 removes last element of array removed element YES, array loses element .shift 1 removes first element
      of array removed element YES, array loses element .unshift 1+ pre-pends element(s) to start of array count of updated
      array YES, array gains element(s) [...array_name, arg] 1 appends 'arg' to end of array appended array NO, array remains
      unmutated [arg ,...array_name] 1 pre-pends 'arg' to beginning of array pre-pended array NO, array remains unmutated

      <table border="1">
        <tr>
          <td>method</td>
          <td>args</td>
          <td>action</td>
          <td>returns</td>
          <td>mutates y/n?</td>
        </tr>
        <tr>
          <td>.push</td>
          <td>gains element(s)</td>
          <td>Poodle</td>
          <td>Streetdog</td>
          <td>Cocker Spaniel</td>
        </tr>

      </table>
    </div>
  </div>
</div>