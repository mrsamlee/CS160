class Posting < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  # has_many :owner, foreign_key: "posting_id", class_name: "Transaction"
  
  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.street_changed? and obj.city_changed? and obj.state_changed?}

  def address
    [street, city, state, country].compact.join(', ')
  end
  
  validates_presence_of :street, :city, :name, :ingredients
end
