class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new
    if @recipe.save
      flash[:notice] = "Recipe Added"
      redirect_to root_path
    else
      @recipe.errors.full_messages
      render 'new'
    end
  end
end
