class Sandwich < ActiveRecord::Base
	has_and_belongs_to_many :ingredients
	has_one :posting
	belongs_to :bread
end
