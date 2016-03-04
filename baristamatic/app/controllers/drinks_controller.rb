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

class DrinksController < ApplicationController

	def menu
		@drinks = Drink.all
	end

	def new
		@drink = Drink.new
	end

	def create
		@drink = Drink.new(params)
		#deal with ingredients
		redirect '/'
	end

	def show
		@drink = Drink.find(params[:id])
	end

	def delete
		drink = Drink.find(params[:id])
		Drink.destroy(drink)
		redirect '/'
	end
end
