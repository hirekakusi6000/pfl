class AddColumn3ToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :twitter_outsidecolor, :string
    add_column :users, :twitter_insidecolor, :string
    add_column :users, :instagram_outsidecolor, :string
    add_column :users, :instagram_insidecolor, :string
    add_column :users, :facebook_outsidecolor, :string
    add_column :users, :facebook_insidecolor, :string
    add_column :users, :youtube_outsidecolor, :string   
    add_column :users, :youtube_insidecolor, :string
    add_column :users, :tiktok_outsidecolor, :string
    add_column :users, :tiktok_insidecolor, :string
  end
end
