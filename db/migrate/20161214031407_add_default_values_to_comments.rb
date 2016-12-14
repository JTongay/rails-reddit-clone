class AddDefaultValuesToComments < ActiveRecord::Migration
  def change
    change_column :comments, :votes, :integer, :default => 1
  end
end
