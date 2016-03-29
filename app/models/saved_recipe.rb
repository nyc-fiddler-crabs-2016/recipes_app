class SavedRecipe < ActiveRecord::Base

  # validates :recipe, uniqueness: {scope: :user, message: "You have already saved that recipe."}

  belongs_to :user
  # has_many   :recipes
  has_many   :saved_recipe_ingredients
  has_many   :ingredients, through: :saved_recipe_ingredients

  def copy_recipe(recipe_id)
	recipe = Recipe.find(recipe_id)
  @saved_recipe = SavedRecipe.new(saved_recipe_params)
  recipe.ingredients.each do |ingredient| 
  		self.ingredients << ingredient
  	end
  end

  def add_ingredients(new_ingredient)
    self.ingredients << new_ingredient
  end

  private

  def saved_recipe_params
  params = {user_id: current_user.id,name: recipe.name, category: recipe.category, description: recipe.description}
  end
end