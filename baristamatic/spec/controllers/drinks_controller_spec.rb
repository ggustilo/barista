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

require 'rails_helper'

RSpec.describe DrinksController, type: :controller do
	context "given a few drinks" do
		before(:each) do
			Drink.create(name: "Coffee")
			Drink.create(name: "Decaf Coffee")
			Drink.create(name: "Caffe Latte")
		end
		
		describe "GET menu" do
	    it "assigns @drinks" do
	      @drinks = Drink.all
	      get :menu
	      expect(assigns(:drinks)).to eq(@drinks)
	    end

	    it "renders the menu template" do
	      get :menu
	      expect(response).to render_template("menu")
	    end
	  end
	end
end