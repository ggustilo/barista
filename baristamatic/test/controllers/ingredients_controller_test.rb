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

require 'test_helper'

class IngredientsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
end
