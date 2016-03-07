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

class Drink < ActiveRecord::Base
	has_many :drink_ingredients
	has_many :ingredients, :through => :drink_ingredients

	validates :name, presence: true

	validates :cost, :numericality => { :greater_than_or_equal_to => 0 }
	validates :in_stock, presence: true

	def cost
		cost = 0
		self.drink_ingredients.each do |ingredient|
			cost += (ingredient.ingredient.cost * ingredient.units_needed)
		end
		cost
	end

	def cost_to_s
		"%.2f" % self.cost
	end

	def in_stock
		puts "IN HERE"
		in_stock = true
		self.drink_ingredients.each do |ingredient|
			puts "IN HERE NOW"
			if ingredient.ingredient.units < ingredient.units_needed
				return false
			end
		end
		in_stock
	end


end
