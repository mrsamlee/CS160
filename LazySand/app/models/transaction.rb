class Transaction < ActiveRecord::Base
	has_one :posting
	belongs_to :user
end
