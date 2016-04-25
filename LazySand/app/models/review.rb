class Review < ActiveRecord::Base
	belongs_to :users, class_name: 'User', foreign_key: 'user_id'
end
