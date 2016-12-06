class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :votes
      t.references :users
      t.references :posts
      t.timestamps
    end
  end
end
