class Ingredient < ActiveRecord::Base

  has_many :recipe_ingredients
  has_many :recipes, through: :recipes_ingredients
end
