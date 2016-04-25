class Posting < ActiveRecord::Base
	belongs_to :sandwich
	belongs_to :transaction
	belongs_to :user
end
