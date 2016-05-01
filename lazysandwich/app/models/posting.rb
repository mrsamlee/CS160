class Posting < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  has_and_belongs_to_many :owner, foreign_key: "posting_id", class_name: "Transaction"
end
