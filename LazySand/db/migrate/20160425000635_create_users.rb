class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :about
      t.string :avatar

      t.timestamps null: false
    end
  end
end
