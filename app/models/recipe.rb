class Recipe < ActiveRecord::Base
	has_many :ingredients, through: :recipe_ingredients
	has_many :recipe_ingredients
	#accepts_nested_attributes_for :recipe_ingredients
end
