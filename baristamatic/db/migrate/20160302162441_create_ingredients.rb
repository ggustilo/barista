class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
    	t.string :name, null: false
    	t.float :cost, null: false
    	t.integer :amount

      t.timestamps null: false
    end
  end
end
