class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :votes
      t.references :users, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true
      t.timestamps
    end
  end
end
