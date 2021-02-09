class AddColumn4ToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :twitter_id_1, :string
    add_column :users, :twitter_id_2, :string
    add_column :users, :twitter_id_3, :string
    add_column :users, :twitter_comment_1, :string
    add_column :users, :twitter_comment_2, :string
    add_column :users, :twitter_comment_3, :string
    add_column :users, :youtube_id_1, :string
    add_column :users, :youtube_id_2, :string
    add_column :users, :youtube_comment_1, :string
    add_column :users, :youtube_comment_2, :string
    add_column :users, :instagram_id_1, :string
    add_column :users, :instagram_id_2, :string
    add_column :users, :instagram_comment_1, :string
    add_column :users, :instagram_comment_2, :string
    add_column :users, :facebook_id_1, :string
    add_column :users, :facebook_id_2, :string
    add_column :users, :facebook_comment_1, :string
    add_column :users, :facebook_comment_2, :string
    add_column :users, :tiktok_id_1, :string
    add_column :users, :tiktok_id_2, :string
    add_column :users, :tiktok_comment_1, :string
    add_column :users, :tiktok_comment_2, :string
  end
end
