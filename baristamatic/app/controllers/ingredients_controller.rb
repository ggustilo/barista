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

	def restock
		@ingredients = Ingredient.all
		@ingredients.each do |ingredient|
			ingredient.update_attribute(:units, 10)
		end
		render "inventory"
	end
end
