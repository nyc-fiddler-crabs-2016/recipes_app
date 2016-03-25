class UserRecipesController < ApplicationController

  def create
    @user = current_user
    @user_recipe = UserRecipe.new(user_id: current_user.id, recipe_id: params[:id])
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

  def show
    @user_recipe = UserRecipe.find_by(user_id: current_user.id, recipe_id: params[:id])
  end

  def update
    binding.pry
    @ingredient = Ingredient.find_by(id: params[:ingredient_id])
    @user_recipe = UserRecipe.find_by(user_id: current_user.id, recipe_id: params[:id])
    @user_recipe.ingredients << @ingredient
    redirect_to user_recipe_path(@user_recipe)
  end

  # def destroy
  #   @user = current_user
  #   user_recipe = UserRecipe
  #   user_recipe.destroy
  #   if request.xhr?
  #     render 'users/_show'
  #   else
  #     redirect_to user_path(current_user)
  #   end
  # end
end
