# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  cost       :float            not null
#  units      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class IngredientsController < ApplicationController
	def inventory
		@ingredients = Ingredient.all
	end

	def new
		@ingredient = Ingredient.new
	end

	def create
		@ingredient = Ingredient.new(params)
		redirect '/ingredients'
	end

	def delete
		ingredient = Ingredient.find(params[:id])
		Ingredient.destroy(ingredient)
		redirect '/ingredients'
	end
end
