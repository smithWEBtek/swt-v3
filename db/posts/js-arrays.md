


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


