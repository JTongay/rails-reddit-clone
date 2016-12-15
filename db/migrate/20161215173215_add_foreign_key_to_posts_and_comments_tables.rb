class AddForeignKeyToPostsAndCommentsTables < ActiveRecord::Migration
  def change
    add_foreign_key :posts, :users, on_delete: cascade
    add_foreign_key :comments, :users, on_delete: cascade
    add_foreign_key :comments, :posts, on_delete: cascade
  end
end
