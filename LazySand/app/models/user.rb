class User < ActiveRecord::Base
	belongs_to :accounts, class_name: 'Account', foreign_key: 'account_id'
end
