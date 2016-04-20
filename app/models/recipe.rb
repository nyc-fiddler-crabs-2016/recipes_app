class Recipe < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :creator, class_name: "User"
  belongs_to :user
  has_many   :recipe_ingredients
  has_many   :ingredients, through: :recipe_ingredients

  def copy_recipe(recipe)
  	@recipe = recipe.dup
  	@recipe.user = current_user
  	@recipe.ingredients = recipe.ingredients
  	@recipe.save
  end

end
