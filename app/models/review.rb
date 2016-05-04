class Review < ActiveRecord::Base
  belongs_to :posting
  belongs_to :user
  has_many :transactions
end
