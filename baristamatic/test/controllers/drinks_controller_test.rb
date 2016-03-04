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

require 'test_helper'

class DrinksControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
end
