class AddDefaultValuesToPosts < ActiveRecord::Migration
  def change
    change_column :posts, :image, :string, :default => 'http://imgc.allpostersimages.com/images/P-473-488-90/75/7595/TW3F300Z/posters/booyah-comic-pop.jpg'
    change_column :posts, :votes, :integer, :default => 1
  end
end
