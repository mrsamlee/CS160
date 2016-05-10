class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :consumer
      t.string :name
      t.text :ingredients
      t.string :location

      t.timestamps null: false
    end
  end
end
