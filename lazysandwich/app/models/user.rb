class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :owner, foreign_key: "user_id", class_name: "Transaction"
  has_many :reviews
  has_many :postings
  accepts_nested_attributes_for :reviews, :postings, :owner

  geocoded_by :current_sign_in_ip,
    :latitude => :lat, :longitude => :lon
  after_validation :geocode
end
