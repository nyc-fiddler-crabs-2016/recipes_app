class SavedRecipesController < ApplicationController

  def create
    source_recipe_id = params[:format]
    copy_recipe(source_recipe_id)
    if @saved_recipe.save
      if request.xhr?
        render '_add_recipe.html.erb', layout: false
      else
        flash[:alert] = ["Added #{@saved_recipe.name} to your saved recipes. "]
        redirect_to user_path(@user)
      end
    else
       flash[:now] = ["There was a problem. Please look into it. "]
       render 'users/show'
    end
  end

  def show
    @saved_recipe = SavedRecipe.find_by(id: params[:id])
  end

  def edit
    @saved_recipe = SavedRecipe.find_by(id: params[:id])
	  authorize_access(@saved_recipe)
  end

  def update
    @ingredient = Ingredient.find_by(id: params[:ingredient_id])
    @saved_recipe = SavedRecipe.find_by(id: params[:id])
	  authorize_access(@saved_recipe)
    @saved_recipe.ingredients << @ingredient
    redirect_to recipe_path(@saved_recipe)
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

  private

  def source_recipe_ingredients
    Ingredient.where()
  end


  def saved_recipe_params
    params.require(:saved_recipe).permit(:current_user





end