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
      flash[:notice] = "Recipe Added"
      redirect_to root_path
    else
      flash[:notice] = "whoops. please try again"
      render 'new'
    end
  end

  def add
    @recipe = Recipe.find(params[:id])
    current_user.recipes << @recipe
  end

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
