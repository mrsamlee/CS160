class AddUserToPosting < ActiveRecord::Migration
  def change
  	add_column :postings, :user_id, :integer
  end
end
