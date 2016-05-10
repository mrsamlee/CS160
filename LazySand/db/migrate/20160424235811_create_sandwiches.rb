class CreateSandwiches < ActiveRecord::Migration
  def change
    create_table :sandwiches do |t|
      t.float :price

      t.timestamps null: false
    end
  end
end
