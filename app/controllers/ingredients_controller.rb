class IngredientsController < ApplicationController
  
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    get_api_data(nbdno)
    if @ingredient.save
      flash[:notice] << "#{@ingredient.name} added."
      redirect_to ingredients_path
    else
      flash[:now] = ["There was a problem. Please look into it. "]
      render 'new'
    end
  end

  # def show
  #    @ingredient = Ingredient.find(params[:id])
  # end

  # def edit
  #   @ingredient = Ingredient.find(params[:id])
  # end

  # def update
  #   @ingredient = Ingredient.find(params[:id])
  # end

  # def destroy
  #   @ingredient = Ingredient.find(params[:id])
  # end

  # ndbno has to be as a string because if there is a 0 as the first digit it is ignored and Ruby changes it to a different number.
  def get_api_data(ndbno) 
    food_id = "&ndbno=" + ndbno
    food_data = HTTParty.get(URI_BASE+API_KEY+NUTRIENT_LIST+food_id)
    source = food_data["report"]["foods"][0]
    @ingredient = Ingredient.new
    @ingredient.name = source["name"]
    @ingredient.category = CATEGORIES[ndbno[0..1]]
    @ingredient.protein = source["nutrients"][0]["value"]
    @ingredient.fat = source["nutrients"][1]["value"]
    @ingredient.carbs = source["nutrients"][2]["value"]
    @ingredient.lactose = source["nutrients"][3]["value"]
    @ingredient.sugars = source["nutrients"][4]["value"]
    @ingredient.calories = source["nutrients"][5]["value"]
    @ingredient.water = source["nutrients"][6]["value"]
    @ingredient.fiber = source["nutrients"][7]["value"]
    @ingredient.default_measurements
    @ingredient.save
  end

  def default_measurements
    measurement_details = source["measure"].partition(/\d[.]\d/)
    self.amount, self.measurement_type = measurement_details[1],measurement_details[2].lstrip!
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :category, :water, :calories, :protein, :fats, :carbohydrates, :fiber, :sugars, :lactose)
  end

end


