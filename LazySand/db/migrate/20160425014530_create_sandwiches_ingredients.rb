class CreateSandwichesIngredients < ActiveRecord::Migration
  def change
    create_table :sandwiches_ingredients do |t|
    	t.references :sandwich, null: false, index: true
		t.references :ingredient, null: false, index: true
    end
  end
end
