class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params.merge(creator_id: current_user))
    if @recipe.save
      flash[:alert] = ["Recipe Added"] #I don't get why this is an issue but the same type of syntax in the userrecipe controller works fine. '''<%= flash[:alert].join("<br>") if flash[:alert] %>'''| '''undefined method `join' for "Recipe Added":String'''
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

  # def remove
  #   recipe = Recipe.find(params[:id])
  #   current_user.recipes.delete(recipe)
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
  end

private

  def recipe_params
    params.require(:recipe).permit(:name, :category, :description)
  end

end
