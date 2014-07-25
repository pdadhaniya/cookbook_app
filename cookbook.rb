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
		puts "Added a recipe to the collection: #{recipe.title}" #why recipe.title?
	end
	# def recipe_titles
	# 	puts "#{recipe.title}"
	# end

	# def recipe_ingredients
	# 	puts "These are the ingredients for #{recipe.title}: #{recipe.ingredients}"
	# end

	def print_cookbook
		@recipes.each { |x| puts "The item is called #{x.title}, 
		contains #{x.ingredients.map { |y| y.to_s}.join(", ")} and is made 
		by #{x.steps.map { |z| z.to_s}.join", "}."}
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

	def print_recipe
		puts "The recipe has a title of #{@title}"
		puts "The recipe requires the following ingredients: #{@ingredients.map { |b| b.to_s}.join", "}"
		puts "The recipe is made by following these steps: #{@steps.map { |a| a.to_s}.join", "}"
	end

end

mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])
taco = Recipe.new("Hardshell Taco", ["shell", "lettuce", "cheese", "onions"], ["get shell", "add ingredients"])

puts mex_cuisine.title # Mexican Cooking
puts burrito.title # Bean Burrito
p burrito.ingredients # ["tortilla", "bean", "cheese"]
p burrito.steps # ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"]

mex_cuisine.title = "Mexican Recipes"
puts mex_cuisine.title # Mexican Recipes

burrito.title = "Veggie Burrito"
burrito.ingredients = ["tortilla", "tomatoes"]
burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

p burrito.title # "Veggie Burrito"
p burrito.ingredients # ["tortilla", "tomatoes"]

mex_cuisine.recipes # []
mex_cuisine.add_recipe(burrito)
mex_cuisine.add_recipe(taco)
p mex_cuisine.recipes # [#<Recipe:0x007fbc3b92e560 @title="Veggie Burrito", @ingredients=["tortilla", "tomatoes"], @steps=["heat tomatoes", "place tomatoes in tortilla", "roll up"]>]

burrito.print_recipe
taco.print_recipe

mex_cuisine.print_cookbook

