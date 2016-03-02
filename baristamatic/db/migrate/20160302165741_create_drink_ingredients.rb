class CreateDrinkIngredients < ActiveRecord::Migration
  def change
    create_table :drink_ingredients, :id => false do |t|
    	t.integer :drink_id, null: false
    	t.integer :ingredient_id, null: false

    	t.timestamps null: false
    end
  end
end