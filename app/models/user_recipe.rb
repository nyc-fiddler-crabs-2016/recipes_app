class UserRecipe < ActiveRecord::Base
validates :recipe, uniqueness: {scope: :user, message: "You have already saved that recipe."}

  belongs_to :recipe
  belongs_to :user

  def name
    self.recipe.name
  end
end
