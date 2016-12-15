class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :image
      t.integer :votes
      t.references :user
      t.timestamps
    end
  end
end
