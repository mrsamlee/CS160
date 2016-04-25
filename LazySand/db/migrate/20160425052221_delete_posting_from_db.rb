class DeletePostingFromDb < ActiveRecord::Migration
  def change
  	remove_column :postings, :transaction_id
  end
end
