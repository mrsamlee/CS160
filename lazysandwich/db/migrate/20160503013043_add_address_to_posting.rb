class AddAddressToPosting < ActiveRecord::Migration
  def change
    add_column :postings, :street, :string
    add_column :postings, :city, :string
    add_column :postings, :state, :string
    add_column :postings, :country, :string
  end
end
