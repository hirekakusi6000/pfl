class RemoveColomnFromusers < ActiveRecord::Migration[6.1]
  def change
     remove_column :users, :twitter_id_1, :string
     remove_column :users, :twitter_id_2, :string
     remove_column :users, :twitter_id_3, :string
     remove_column :users, :twitter_comment_1, :string
     remove_column :users, :twitter_comment_2, :string
     remove_column :users, :twitter_comment_3, :string
     remove_column :users, :twitter_outsidecolor, :string
     remove_column :users, :twitter_insidecolor, :string
     remove_column :users, :instagram_id_1, :string
     remove_column :users, :instagram_id_2, :string
     remove_column :users, :instagram_id_3, :string
     remove_column :users, :instagram_comment_1, :string
     remove_column :users, :instagram_comment_2, :string
     remove_column :users, :instagram_comment_3, :string
     remove_column :users, :instagram_outsidecolor, :string
     remove_column :users, :instagram_insidecolor, :string
     remove_column :users, :facebook_id_1, :string
     remove_column :users, :facebook_id_2, :string
     remove_column :users, :facebook_id_3, :string
     remove_column :users, :facebook_comment_1, :string
     remove_column :users, :facebook_comment_2, :string
     remove_column :users, :facebook_comment_3, :string
     remove_column :users, :facebook_outsidecolor, :string
     remove_column :users, :facebook_insidecolor, :string
     remove_column :users, :youtube_id_1, :string
     remove_column :users, :youtube_id_2, :string
     remove_column :users, :youtube_id_3, :string
     remove_column :users, :youtube_comment_1, :string
     remove_column :users, :youtube_comment_2, :string
     remove_column :users, :youtube_comment_3, :string
     remove_column :users, :youtube_outsidecolor, :string   
     remove_column :users, :youtube_insidecolor, :string
     remove_column :users, :tiktok_id_1, :string
     remove_column :users, :tiktok_id_2, :string
     remove_column :users, :tiktok_id_3, :string
     remove_column :users, :tiktok_comment_1, :string
     remove_column :users, :tiktok_comment_2, :string
     remove_column :users, :tiktok_comment_3, :string
     remove_column :users, :tiktok_outsidecolor, :string
     remove_column :users, :tiktok_insidecolor, :string
  end
end
