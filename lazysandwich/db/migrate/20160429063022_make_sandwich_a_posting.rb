class MakeSandwichAPosting < ActiveRecord::Migration
  def change
  	add_column :postings, :name, :string
  	add_column :postings, :price, :float
  	add_column :postings, :ingredients, :text
  end
end
