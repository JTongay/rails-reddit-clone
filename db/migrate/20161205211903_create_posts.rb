class CreatePost < ActiveRecord::Migration
  def change
    create_table :post do |t|
      t.string :title
      t.string :body
      t.string :image
      t.integer :votes
      t.references :users, index: true, foreign_key: true
      t.timestamps
    end
  end
end
