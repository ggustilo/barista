# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  drink_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base
	belongs_to :drink

	validates :drink_id, presence: true

	validate :drink_in_stock

	private

	def drink_in_stock
		puts "IN DRINK IN STOCK"
		errors.add(:drink_in_stock, "Drink not in stock.") if drink.in_stock != true
	end

end
