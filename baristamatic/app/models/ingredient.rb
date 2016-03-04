class Ingredient < ActiveRecord::Base
	has_many :drink_ingredients
	has_many :drinks, :through => :drink_ingredients

	validates :name, presence: true
	validates :cost, presence: true
end
