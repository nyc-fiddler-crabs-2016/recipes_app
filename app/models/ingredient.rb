class Ingredient < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  has_many :saved_recipe_ingredients
  has_many :saved_recipes, through: :recipe_ingredients
end
