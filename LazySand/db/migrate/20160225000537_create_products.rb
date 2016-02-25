class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :producer
      t.string :name
      t.float :price
      t.text :ingredients
      t.string :location

      t.timestamps null: false
    end
  end
end
