class User < ActiveRecord::Base
  validates :email, :username, presence: true, uniqueness: true, length: {minimum: 5, maximim: 18}

  # has_many :user_recipes
  has_many :saved_recipes, class_name: "UserRecipe"
  has_many :recipes, through: :saved_recipes, source: :recipe
  has_many :created_recipes, foreign_key: "creator_id", class_name: "Recipe"

  has_secure_password
end
