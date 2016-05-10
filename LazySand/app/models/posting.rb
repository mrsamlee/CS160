class Posting < ActiveRecord::Base
	belongs_to :sandwich
	belongs_to :user	
	has_many :transactions
	accepts_nested_attributes_for :sandwich, :user
end
