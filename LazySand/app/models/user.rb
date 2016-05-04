class User < ActiveRecord::Base
<<<<<<< HEAD
	has_many :postings
	has_many :transactions
	has_many :reviews
	belongs_to :account
=======
	has_secure_password
	belongs_to :accounts, class_name: 'Account', foreign_key: 'account_id'
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> Added a function Sign up page, need to link it to the homepage and add css
=======
	has_many :reviews
>>>>>>> I added a poorly looking review page. Needs to be linked to the user page
=======
	has_many :reviews
>>>>>>> b2d4e03ec808f03db555a18087d055ec47a65bd2
>>>>>>> 0941525d22896b01c9857d6f58ba35f2aad3fdf0
end
