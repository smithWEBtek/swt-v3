
---
[OO Triangle Lab](https://learn.co/tracks/full-stack-web-development-v4/object-oriented-ruby/metaprogramming/oo-triangle)

[Custom Errors Lab](https://learn.co/tracks/full-stack-web-development-v4/object-oriented-ruby/metaprogramming/custom-errors)

[Study Group Feedback Form](https://theflatironschool.typeform.com/to/jMLdwE)

### Agenda
##### 1. Intro, Survey and Poll
##### 2. Read through Lab, calling out requirements
##### 3. Scaffold the lab based on requirements

- `Triangle` class
- TriangleError class
- `initialize` method with 3 arguments
- `kind` method
- triangle rules
- Error handling with `TriangleError` class
- kind rules

##### 4. Psuedo code where rules go in methods

- Validity rules for Triangle?
- Validity rules for Isosceles?
- Validity rules for Equilateral?
- Validity rules for Scalene?

##### 5. Error handling
- Review Ruby Exception class and sub-classes
- Review class inheritance
- Review `begin` `raise` `rescue` based on a `condition` or `event`
	- Where should we raise our custom Error class?


---


##### the `attr_accessors` give us two methods: SETTER and GETTER
- setter (sets the value of the @side1 instance variable)
- we call it the **side one equals** method

```ruby 
# the side1= method (also known as "the SETTER method" 
# because we use it to SET the value of @side1 variable

def side1=(argument)
	@side1 = argument
end
```

```ruby
# the side1 method (also known as "the GETTER method")
# because we use it to GET the value of the @side1 variable

def side1
	@side1
end
```
 

- write a `Triangle class`
- initialize(length1, length2, length3)
- instance method 

```ruby
def kind
# run rules for valid triangles (using the 3 lengths, via attr_accessor methods)
# if not valid, raise a custom error exception class
# if the 3 lengths make a valid triangle...
# run rules to determine "kind" of triangle => :isoloces, :equilateral or :scalene
# return the name of "kind"
end
```

# use attr_accessor methods to:
	1. Determine true/false if the 3 lengths make up a valid triangle
	2. If the 3 lengths make a valid triangle, determine what "kind" of triangle
	3. return the name of the "kind" of triangle


##### valid triangle rules
	- the sum of 2 sides can not exceed the length of the 3rd side
	- no side can be zero
	- no side can have a negative number

```ruby
class TriangleError
	#	code for handling error...
	# puts "triangle is NOT valid"
end
```

```ruby
class Triangle
	class TriangleError < StandardError
		# world blows up, triangle is NOT valid
	end

	def initialize(s1, s2, s3)
		# fill in code
	end


end
```

##### valid isoloces triangle rules
	- passes validity rules
	- 2 of the 3 sides are equal

##### valid equilateral triangle rules
	- passes validity rules
	- 3 sides are equal

##### valid equilateral triangle rules
	- passes validity rules
	- 3 sides are uneqal




---
---
---
---
---

##### Review: Custom error Class in Ruby
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

##### A note on Inheritance
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
	# Dad says to call Mom
 end
end
```