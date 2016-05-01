class AddPostingToSandwich < ActiveRecord::Migration
  def change
  	add_column :sandwiches, :posting_id, :integer
  end
end
