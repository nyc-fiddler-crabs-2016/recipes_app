class SavedRecipeIngredientsController < ApplicationController
  def create
    @saved_recipe = SavedRecipe.find(params[:id])
    @ingredient = Ingredient.find(params[:ingredient_id])
    @saved_recipe_ingredient = SavedRecipeIngredient.new(user_id: current_user.id, saved_recipe_id: @saved_recipe_id)
    # @ingredient = Ingredient.find(params[:ingredient_id])
    # @saved_recipe_ingredient = SvedRecipeIngredient.new(user_id: current_user.id, recipe_id: params[:id])
    if @saved_recipe.save
      if request.xhr?
        # render '_add_recipe.html.erb', layout: false
      else
        flash[:alert] = ["Added #{@saved_recipe.name} to your saved recipes. "]
        redirect_to user_path(@user)
      end
    else
       flash[:now] = ["There was a problem. Please look into it. "]
       render 'users/show'
    end
  end

  def destroy
    saved_recipe = SavedRecipe.find(params[:id])
    saved_recipe_ingredient = SavedRecipe.find_by(user_id: current_user.id, saved_recipe_id: params[:id])
    saved_recipe_ingredient.destroy
    if request.xhr?
      render 'users/_show'
    else
      redirect_to user_path(current_user)
    end
  end
end
