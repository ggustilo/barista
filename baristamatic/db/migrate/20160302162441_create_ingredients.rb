class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
    	t.string :name, null: false
    	t.float :cost, null: false
    	t.integer :units

      t.timestamps null: false
    end
  end
end
