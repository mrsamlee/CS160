class User < ActiveRecord::Base
	has_secure_password
	belongs_to :accounts, class_name: 'Account', foreign_key: 'account_id'
	has_many :reviews
end
