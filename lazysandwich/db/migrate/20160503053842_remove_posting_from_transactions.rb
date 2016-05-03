class RemovePostingFromTransactions < ActiveRecord::Migration
  def change
  	remove_column :transactions, :posting_id
  end
end
