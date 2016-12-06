class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :votes
      t.belongs_to :users, index: true
      t.belongs_to :posts, index: true
      t.timestamps
    end
  end
end
