class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
    @categories = CATEGORIES.map {|key, name| name}
  end

  def create
    @recipe = Recipe.new(recipe_params.merge(creator_id: current_user))
    if @recipe.save
      flash[:alert] = ["Recipe Added"] 
      redirect_to root_path
    else
      flash[:now] = ["whoops. please try again"]
      render 'new'
    end
  end

# These routes are certianly not restful.
  # def add
  #   recipe = Recipe.find(params[:id])
  #   current_user.recipes << recipe
  #   redirect_to user_path(current_user)
  # end


  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    recipe = Recipe.find(params[:id])
  #   current_user.recipes.delete(recipe) if recipe.creator == current_user
  #   redirect_to user_path(current_user)
  end

private

  def recipe_params
    params.require(:recipe).permit(:name, :category, :description)
  end

end
