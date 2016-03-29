class Recipe < ActiveRecord::Base
  validates :name, presence: true

  has_many :user_recipes
  has_many :users, through: :user_recipes
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  belongs_to :creator, class_name: "User"

end
