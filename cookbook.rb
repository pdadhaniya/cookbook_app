class Cookbook
	#replaced getter and setter methods
	attr_accessor :title
	attr_reader :recipes

	def initialize(title)
		@title = title
		@recipes = []
	end

	def add_recipe(recipe)
		@recipes << recipe
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

