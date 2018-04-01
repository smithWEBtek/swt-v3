
class Fruit

	attr_accessor :color
	attr_reader :name


	def initialize(name, color, age = 2)
		@name = name
		@color = color
		@age = age
	end

	def name=(name_of_fruit)
		@name = name_of_fruit
	end

	def name
		@name
	end

	def color=(color_of_fruit)
		@color = color_of_fruit
	end

	def color
		@color
	end

	def find_colors
		color

	end


end
