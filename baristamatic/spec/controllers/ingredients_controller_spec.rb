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

require 'rails_helper'

RSpec.describe IngredientsController, type: :controller do
	context 'given a bunch of ingredients with random units' do
		before(:each) do
			Ingredient.create(name: "Coffee", cost: 0.75, units: 2)
			Ingredient.create(name: "Decaf Coffee", cost: 0.75, units: 1)
			Ingredient.create(name: "Sugar", cost: 0.25, units: 0)
			Ingredient.create(name: "Cream", cost: 0.25, units: 8)
		end
		
		describe "GET inventory" do
	    it "assigns @ingredients" do
	      @ingredients = Ingredient.all
	      get :inventory
	      expect(assigns(:ingredients)).to eq(@ingredients)
	    end

	    it "renders the inventory template" do
	      get :inventory
	      expect(response).to render_template("inventory")
	    end
	  end

	  describe "POST restock" do
	    it "assigns @ingredients" do
	      @ingredients = Ingredient.all
	      get :inventory
	      expect(assigns(:ingredients)).to eq(@ingredients)
	    end

	    it "updates @ingredients" do
	      @ingredients = Ingredient.all
	      get :restock
	      r = rand(0..@ingredients.size - 1 )
	      expect(@ingredients[r].units).to eq(10)
	    end

	    it "renders the inventory template" do
	      get :inventory
	      expect(response).to render_template("inventory")
	    end
	  end
	end
end