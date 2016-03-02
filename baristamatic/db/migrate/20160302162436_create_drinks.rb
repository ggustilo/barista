class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
    	t.string :name, null: false
    	t.float :cost
    	t.boolean :in_stock

      t.timestamps null: false
    end
  end
end
