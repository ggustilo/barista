# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  drink_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
	context "given a drink option with ingredients" do
		before(:each) do
			@coffee = Drink.create(name: "Coffee")
			@ground_coffee = Ingredient.create(name: "Coffee", cost: 0.75, units: 10)
			@coffee.drink_ingredients.create(drink_id: @coffee.id, ingredient_id: @ground_coffee.id, units_needed: 3)
		end
		
		describe "GET new" do
			# if the template renders, then the new empty order was instantiated
	    it "renders the new order template" do
	      get :new
	      expect(response).to render_template("new")
	    end
	  end

	  describe "POST create" do
	    it "assigns @order to a valid order" do
	      post :create, {:order => { drink_id: @coffee.id }}
	      expect(assigns(:order)).to be_an(Order)
	    end

	    it "does not assign @order to an invalid order" do
	    	@ground_coffee.update_attribute(:units, 0)
	      post :create, {:order => { drink_id: @coffee.id }}
	      expect(response).to render_template("errors")
	    end

	    it "renders the coffee time template" do
	      post :create, {:order => { drink_id: @coffee.id }}
	      expect(response).to render_template("coffee_time")
	    end
	  end
	end
end
