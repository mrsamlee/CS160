class AddLatitudeAndLongitudeToPosting < ActiveRecord::Migration
  def change
    add_column :postings, :latitude, :float
    add_column :postings, :longitude, :float
  end
end
