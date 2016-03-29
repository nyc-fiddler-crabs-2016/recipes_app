class Recipe < ActiveRecord::Base
  validates :name, presence: true

	  belongs_to :creator, class_name: "User"
	  # belongs_to :saved_recipe
  has_many   :recipe_ingredients
  has_many   :ingredients, through: :recipe_ingredients
end
