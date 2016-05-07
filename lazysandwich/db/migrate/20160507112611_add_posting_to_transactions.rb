class AddPostingToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :posting, :string
  end
end
