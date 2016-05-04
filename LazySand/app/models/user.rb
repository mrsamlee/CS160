class User < ActiveRecord::Base
<<<<<<< HEAD
	has_many :postings
	has_many :transactions
	has_many :reviews
	belongs_to :account
=======
	has_secure_password
	belongs_to :accounts, class_name: 'Account', foreign_key: 'account_id'
	has_many :reviews
>>>>>>> b2d4e03ec808f03db555a18087d055ec47a65bd2
end
