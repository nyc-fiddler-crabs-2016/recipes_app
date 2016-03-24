class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.string :category
      t.string :description

      t.timestamps null: false
    end
  end
end
