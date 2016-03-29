class SavedRecipesController < ApplicationController

  def create
    @user = current_user
    @recipe = SavedRecipe.new(id: params[:id])
    if @recipe.save
      if request.xhr?
        render '_add_recipe.html.erb', layout: false
      else
        flash[:alert] = ["Added #{@recipe.name} to your saved recipes. "]
        redirect_to path(@user)
      end
    else
       flash[:now] = ["There was a problem. Please look into it. "]
       render 'users/show'
    end
  end

  def show
    @recipe = SavedRecipe.find_by(id: params[:id])
  end

  def edit
    @recipe = SavedRecipe.find_by(id: params[:id])
	authorize_access(@recipe)
  end

  def update
    @ingredient = Ingredient.find_by(id: params[:ingredient_id])
    @recipe = SavedRecipe.find_by(id: params[:id])
	authorize_access(@recipe)
    @recipe.ingredients << @ingredient
    redirect_to recipe_path(@recipe)
  end

  # def destroy
  #   @user = current_user
  #   recipe = SavedRecipe
  # authorize_access(recipe)
  #   recipe.destroy
  #   if request.xhr?
  #     render 'users/_show'
  #   else
  #     redirect_to path(current_user)
  #   end
  # end
# end

end