class AddNutritionalInfoToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :calories, :integer
    add_column :ingredients, :fat, :float
    add_column :ingredients, :protein, :float
    add_column :ingredients, :Carbohydrates, :float
    add_column :ingredients, :fiber, :float
    add_column :ingredients, :sugars, :float
    add_column :ingredients, :water, :float
  end
end
