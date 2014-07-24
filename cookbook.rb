class Cookbook
	#replaced getter and setter methods
	attr_accessor :title

	def initialize(title)
		@title = title
	end
end

class Recipe
	#replaced getter and setter methods
	attr_accessor :title
	attr_accessor :ingredients
	attr_accessor :steps

	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end
end

