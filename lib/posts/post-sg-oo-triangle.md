## Lab Walkthru: Object Oriented Triangle

## Review: Custom error Class in Ruby

- Inherit from Exception Class
	- NoMethodError
	- ArgumentError
	- SyntaxError

- Handling an error without blocking

	**if condition...**
	- Begin
		- call custom error class
	- Raise
		- perform action(s) 
		- give users feedback
		- redirect them somewhere useful
		- showing a clear and apologetic message
		- show them a picture of a cat
	- Recue
		- Allow program to proceed

## A note on Inheritance
```ruby
class Child < Parent
end
```

In the case of our custom error class (as the Child) it will inhert from the Ruby [Exception class](https://ruby-doc.org/core-2.2.0/Exception.html), (the Parent in this case).

```ruby
class TriangleError < Exception
end
```

```ruby
class Child < Parent
	
 def message
	 # tell user what happened
	 # world:  ending soon...
 end 
 
 def corrective_action
	# run code to handle it
	# call Dad
 end 

 def result_message
  # provide feedback about it
	# Dad says to ask Mom
 end

end
```


## Lab Walkthu: OO Triangle


