class AddPostingToTransactions < ActiveRecord::Migration
  def change
    add_reference :transactions, :posting, index: true, foreign_key: true
  end
end
