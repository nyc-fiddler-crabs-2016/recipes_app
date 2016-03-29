class RecipeIngredientsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:id])
    @ingredient = Ingredient.find(params[:ingredient_id])
    @recipe_ingredient = RecipeIngredient.new(user_id: current_user.id, recipe_id: params[:id])
    if @user_recipe.save
      if request.xhr?
        render '_add_recipe.html.erb', layout: false
      else
        flash[:alert] = ["Added #{@user_recipe.name} to your saved recipes. "]
        redirect_to user_path(@user)
      end
    else
       flash[:now] = ["There was a problem. Please look into it. "]
       render 'users/show'
    end
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe_ingredient = UserRecipe.find_by(user_id: current_user.id, recipe_id: params[:id])
    recipe_ingredient.destroy
    if request.xhr?
      render 'users/_show'
    else
      redirect_to user_path(current_user)
    end
  end
end
