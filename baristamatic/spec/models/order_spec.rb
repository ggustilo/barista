# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  drink_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Order, type: :model do
	context "given a drink with two ingredients"	do
	  before do
		    @macchiato = Drink.create(name: "Macchiato")
				@coffee = Ingredient.create(name: "Coffee", cost: 0.75, units: 10)
				@cream = Ingredient.create(name: "Cream", cost: 0.25, units: 10)

				@macchiato.drink_ingredients.create(drink_id: @macchiato.id, ingredient_id: @coffee.id, units_needed: 3)
				@macchiato.drink_ingredients.create(drink_id: @macchiato.id, ingredient_id: @cream.id, units_needed: 1)

		end

		it "will create an order if the drink is in stock" do
			@order = Order.create(drink_id: @macchiato.id)
	    expect(@order).to be_an(Order)
	  end

	  it "will not create an order if the drink is not in stock " do
	    @coffee.update_attribute(:units, 0)
	    @order = Order.new(drink_id: @macchiato.id)
	    @order.valid?
	    expect(@order.errors[:drink_in_stock].size).to eq(1)
	  end

 	end
end
