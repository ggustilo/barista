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
		p "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
		@order = Order.new
	end

	def create
		@order = Order.new(order_params)
		if @order.save
			redirect_to '/'
		else
			@errors = @order.errors.full_messages
			puts @errors
			redirect_to '/'
		end
	end

	private

	def order_params
	  params.require(:order).permit(:drink_id)
	end
end
