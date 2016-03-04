class Order < ActiveRecord::Base
	belongs_to :drink

	validates :drink_id, presence: true

	validate :drink_in_stock, 

	private

	def drink_in_stock
		errors.add(:drink_id, "Drink not in stock.") unless self.drink.in_stock == true
	end

end
