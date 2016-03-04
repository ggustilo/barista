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

	def cost_to_s(cost)
		"%.2f" % cost
	end

	def in_stock
		in_stock = true
		self.drink_ingredients.each do |ingredient|
			if ingredient.ingredient.units < ingredient.units_needed
				in_stock = false
			else
				next
			end
		end
		in_stock
	end


end
