class AddBreadToSandwiches < ActiveRecord::Migration
  def change
    add_reference :sandwiches, :bread, index: true, foreign_key: true
  end
end
