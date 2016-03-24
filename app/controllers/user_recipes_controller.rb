class UserRecipesController < ApplicationController
  def create
    @user_recipe = UserRecipe.new(user_recipe_params)
  end

  private
  def user_recipe
    params.require(:user_recipe)
  end
end
