class AddProducerToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :producer, :string
  end
end
