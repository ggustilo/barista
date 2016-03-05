class OrderController < ApplicationController

	def new
		p "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
		@order = Order.new
	end

	def create
		@order = Order.new(params)
		if @order
			redirect '/'
		else
			@errors = @order.errors.full_messages
			erb :"errors"
	end

end
