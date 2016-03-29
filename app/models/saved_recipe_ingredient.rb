class SavedRecipeIngredient < ActiveRecord::Base
	belongs_to :saved_recipe
	belongs_to :ingredient
end
