class AddInfoToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :name, :string
    add_column :transactions, :price, :float
    add_column :transactions, :producer_id, :integer
    add_column :transactions, :street, :string
    add_column :transactions, :city, :string
    add_column :transactions, :state, :string
  end
end
