class Recipe < ActiveRecord::Base

  has_many :user_recipes
  has_many :users, through: :user_recipes
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipes_ingredients
end
