class Posting < ActiveRecord::Base
	belongs_to :sandwich
	belongs_to :user
	accepts_nested_attributes_for :sandwich, :user
end
