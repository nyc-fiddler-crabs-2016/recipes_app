class CreateSavedRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :saved_recipe_ingredients do |t|
      t.integer :saved_recipe_id
      t.integer :ingredient_id
      t.string :measurement_type
      t.float :amount

      t.timestamps null: false
    end
  end
end
