class CreateReviews < ActiveRecord::Migration
  def change
    #drop_table :reviews
    create_table :reviews do |t|
      # t.string :title
      # t.text :body
      t.text :content
      t.timestamps
    end
  end
end
