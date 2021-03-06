class AddColumnToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :pfl_text, :string
    add_column :users, :icon_image, :string
    add_column :users, :header_image, :string
    add_column :users, :background_color, :string
    add_column :users, :twitter_id_1, :string
    add_column :users, :twitter_id_2, :string
    add_column :users, :twitter_id_3, :string
    add_column :users, :twitter_comment_1, :string
    add_column :users, :twitter_comment_2, :string
    add_column :users, :twitter_comment_3, :string
    add_column :users, :twitter_outsidecolor, :string
    add_column :users, :twitter_insidecolor, :string
    add_column :users, :instagram_id_1, :string
    add_column :users, :instagram_id_2, :string
    add_column :users, :instagram_id_3, :string
    add_column :users, :instagram_comment_1, :string
    add_column :users, :instagram_comment_2, :string
    add_column :users, :instagram_comment_3, :string
    add_column :users, :instagram_outsidecolor, :string
    add_column :users, :instagram_insidecolor, :string
    add_column :users, :facebook_id_1, :string
    add_column :users, :facebook_id_2, :string
    add_column :users, :facebook_id_3, :string
    add_column :users, :facebook_comment_1, :string
    add_column :users, :facebook_comment_2, :string
    add_column :users, :facebook_comment_3, :string
    add_column :users, :facebook_outsidecolor, :string
    add_column :users, :facebook_insidecolor, :string
    add_column :users, :youtube_id_1, :string
    add_column :users, :youtube_id_2, :string
    add_column :users, :youtube_id_3, :string
    add_column :users, :youtube_comment_1, :string
    add_column :users, :youtube_comment_2, :string
    add_column :users, :youtube_comment_3, :string
    add_column :users, :youtube_outsidecolor, :string   
    add_column :users, :youtube_insidecolor, :string
    add_column :users, :tiktok_id_1, :string
    add_column :users, :tiktok_id_2, :string
    add_column :users, :tiktok_id_3, :string
    add_column :users, :tiktok_comment_1, :string
    add_column :users, :tiktok_comment_2, :string
    add_column :users, :tiktok_comment_3, :string
    add_column :users, :tiktok_outsidecolor, :string
    add_column :users, :tiktok_insidecolor, :string
  end
end
