class User < ActiveRecord::Base
<<<<<<< HEAD
	has_many :postings
	has_many :transactions
	has_many :reviews
	belongs_to :account
=======
	has_secure_password
	belongs_to :accounts, class_name: 'Account', foreign_key: 'account_id'
>>>>>>> Added a function Sign up page, need to link it to the homepage and add css
end
