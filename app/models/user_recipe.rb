class UserRecipe < ActiveRecord::Base
validates :recipe, uniqueness: {scope: :user, message: "You have already saved that recipe."}

  belongs_to :recipe
  belongs_to :user

  def recipe
    self.recipe
  end

  def name
    self.recipe.name
  end

  def ingredients
    self.recipe.ingredients
  end

  def add_ingredients(new_ingredient)
    self.ingredients << ingredient
  end
end
