class User < ActiveRecord::Base
	has_many :postings
	has_many :transactions
	has_many :reviews
	belongs_to :account
end
