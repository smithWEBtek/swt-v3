class Pet

	attr_accessor :name, :age

	def initialize(name, age)
		@name = name
		@age = age
	end

	def name=(pet_name)
		@name = pet_name
	end

	def name
		@name
	end

end