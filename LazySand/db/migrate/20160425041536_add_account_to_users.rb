class AddAccountToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :account, index: true, foreign_key: true
  end
end
