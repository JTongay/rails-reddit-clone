class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :image
      t.integer :votes
      t.belongs_to :users, index: true
      t.timestamps
    end
  end
end
