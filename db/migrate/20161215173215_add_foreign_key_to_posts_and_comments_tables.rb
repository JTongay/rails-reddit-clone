class AddForeignKeyToPostsAndCommentsTables < ActiveRecord::Migration
  def change
    add_foreign_key :posts, :users
    add_foreign_key :comments, :users
    add_foreign_key :comments, :posts
  end
end
