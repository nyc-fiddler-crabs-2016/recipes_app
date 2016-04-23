class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      flash[:notice] << "#{@ingredient.name} added."
      redirect_to ingredients_path
    else
      flash[:now] = ["There was a problem. Please look into it. "]
      render 'new'
    end
  end

  def show
     @ingredient = Ingredient.find(params[:id])
  end

  # def edit
  #   @ingredient = Ingredient.find(params[:id])
  # end

  # def update
  #   @ingredient = Ingredient.find(params[:id])
  # end

  # def destroy
  #   @ingredient = Ingredient.find(params[:id])
  # end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :category, :water, :calories, :protein, :fats, :carbohydrates, :fiber, :sugars, :lactose)
  end
end
