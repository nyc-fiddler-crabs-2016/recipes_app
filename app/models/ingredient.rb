class Ingredient < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  def nutrients 
	nutrients  = {}
	@food_data["report"]["food"]["nutrients"].select 
	
end
