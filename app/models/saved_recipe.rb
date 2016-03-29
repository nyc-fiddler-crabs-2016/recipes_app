class SavedRecipe < ActiveRecord::Base

  validates :recipe, uniqueness: {scope: :user, message: "You have already saved that recipe."}

  belongs_to :user
  has_many   :recipe_ingredients
  has_many   :ingredients, thrpugh: :recipe_ingredients

  def add_ingredients(new_ingredient)
    self.ingredients << new_ingredient
  end
end

end
