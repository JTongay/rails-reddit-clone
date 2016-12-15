class AlterCommentsAndPostsForeignKeysOnDeleteCascade < ActiveRecord::Migration
  def change
    change_column :posts, :user_id, :integer, on_delete: :cascade
    change_column :comments, :user_id, :integer, on_delete: :cascade
    change_column :comments, :post_id, :integer, on_delete: :cascade
  end
end
