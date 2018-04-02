##  Live Discussion: ActiveRecord
- AR Scope methods
- AR queries
- AR relationships

***
## SWBAT
- Use AR query methods
- Implement CRUD in AR
- Add before :each methods to Rails applications

***
## Key Concepts
- [Object Relational Mapping](http://api.rubyonrails.org/files/activerecord/README_rdoc.html)

- ActiveRecord: Query Methods
	- .find(id)
	- .find_by("<pick-a-column-name>: 'value'") 
	- .first .second .third .fourth .fifth
	- .last(<integer>)
	- .take(<integer>)	
	- .where(attribute: 'value')

***
- ActiveRecord: CRUD 
	- #new 
	- #create 
	- #build
	- #save
	- #update
	- #destroy
	- .destroy_all
- before :each

***
- ActiveRecord: Scope

***
- ActiveRecord: [call_backs](http://guides.rubyonrails.org/active_record_callbacks.html)
- before_action


## Lessons
- [ActiveRecord Associations](https://learn.co/tracks/full-stack-web-development-v3/rails/associations-and-rails/activerecord-associations-review)
- [ActiveRecord Models and Rails](https://learn.co/tracks/full-stack-web-development-v3/rails/rails-models-basics/activerecord-models-and-rails)
- [AR Scope Methods](http://api.rubyonrails.org/classes/ActiveRecord/Scoping/Named/ClassMethods.html)