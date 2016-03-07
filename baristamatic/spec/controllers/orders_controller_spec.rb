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
	# describe "GET index" do
 #    it "assigns @teams" do
 #      team = Team.create
 #      get :index
 #      expect(assigns(:teams)).to eq([team])
 #    end

 #    it "renders the index template" do
 #      get :index
 #      expect(response).to render_template("index")
 #    end
 #  end
end
