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

class Ingredient < ActiveRecord::Base
	has_many :drink_ingredients
	has_many :drinks, :through => :drink_ingredients

	validates :name, presence: true
	validates :cost, presence: true
end
