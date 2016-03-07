# == Schema Information
#
# Table name: drinks
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  cost       :float
#  in_stock   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

RSpec.describe Drink, type: :model do
	context "given a drink with two ingredients" do
		before do
	    @macchiato = Drink.create(name: "Macchiato")
			@coffee = Ingredient.create(name: "Coffee", cost: 0.75, units: 10)
			@cream = Ingredient.create(name: "Cream", cost: 0.25, units: 10)

			@macchiato.drink_ingredients.create(drink_id: @macchiato.id, ingredient_id: @coffee.id, units_needed: 3)
			@macchiato.drink_ingredients.create(drink_id: @macchiato.id, ingredient_id: @cream.id, units_needed: 1)
		end

	  it "generates cost based on its ingredients cost and amount needed" do
	    expect(@macchiato.cost).to eq(2.5)
	  end

	  it "determines whether it is in stock depending on amount of ingredients left" do
	    @cream.update_attribute(:units, 0)
	    expect(@macchiato.in_stock).to be(false)
	  end
  end
end

