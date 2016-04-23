class AddDefaultMeasurementsToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :amount, :float
    add_column :ingredients, :measurement_type, :string
  end
end
