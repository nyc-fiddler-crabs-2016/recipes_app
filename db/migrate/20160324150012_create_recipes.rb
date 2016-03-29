class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :category
      t.string :description
      t.integer :creator_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
