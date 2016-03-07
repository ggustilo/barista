# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  drink_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OrdersController < ApplicationController
	def new
		@order = Order.new
	end

	def create
		@order = Order.new(order_params)
		if @order && @order.save
			drink = Drink.find(@order.drink_id)
			if drink
				drink.drink_ingredients.each do |drink_ingredient|
					ingredient = Ingredient.find(drink_ingredient.ingredient_id)
					new_amount = ingredient.units - drink_ingredient.units_needed
					ingredient.update_attribute(:units, new_amount)
				end
			@drink = drink.name
			render "coffee_time"
			else 
				@errors = ["I'm sorry.  We cannot make that drink for you.  Please choose another."]
				render "errors"
			end
		else
			@errors = ["I'm sorry.  We cannot make that drink for you.  Please choose another."]
			render "errors"
		end
	end

	private

	def order_params
	  params.require(:order).permit(:drink_id)
	end
end
