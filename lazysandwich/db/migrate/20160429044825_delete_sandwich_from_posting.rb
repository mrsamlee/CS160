class DeleteSandwichFromPosting < ActiveRecord::Migration
  def change
  	remove_column :postings, :sandwich_id;
  end
end
