class AddTransactionToPostings < ActiveRecord::Migration
  def change
    add_reference :postings, :transaction, index: true, foreign_key: true
  end
end
