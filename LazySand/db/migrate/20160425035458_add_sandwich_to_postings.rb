class AddSandwichToPostings < ActiveRecord::Migration
  def change
    add_reference :postings, :sandwich, index: true, foreign_key: true
  end
end
