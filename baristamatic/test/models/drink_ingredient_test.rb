# == Schema Information
#
# Table name: drink_ingredients
#
#  drink_id      :integer          not null
#  ingredient_id :integer          not null
#  units_needed  :integer          default(1)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class DrinkIngredientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
