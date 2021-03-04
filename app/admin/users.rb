ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :name, :pfl_text, :icon_image, :header_image, :background_color, :twitter_id_1, :twitter_id_2, :twitter_id_3, :twitter_comment_1, :twitter_comment_2, :twitter_comment_3, :twitter_outsidecolor, :twitter_insidecolor, :instagram_id_1, :instagram_id_2, :instagram_id_3, :instagram_comment_1, :instagram_comment_2, :instagram_comment_3, :instagram_outsidecolor, :instagram_insidecolor, :facebook_id_1, :facebook_id_2, :facebook_id_3, :facebook_comment_1, :facebook_comment_2, :facebook_comment_3, :facebook_outsidecolor, :facebook_insidecolor, :youtube_id_1, :youtube_id_2, :youtube_id_3, :youtube_comment_1, :youtube_comment_2, :youtube_comment_3, :youtube_outsidecolor, :youtube_insidecolor, :tiktok_id_1, :tiktok_id_2, :tiktok_id_3, :tiktok_comment_1, :tiktok_comment_2, :tiktok_comment_3, :tiktok_outsidecolor, :tiktok_insidecolor, :sns_icons_clor, :sns_icons_color, :font_color, :font_family, :link_background_color, :link_font_color
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :name, :pfl_text, :icon_image, :header_image, :background_color, :twitter_id_1, :twitter_id_2, :twitter_id_3, :twitter_comment_1, :twitter_comment_2, :twitter_comment_3, :twitter_outsidecolor, :twitter_insidecolor, :instagram_id_1, :instagram_id_2, :instagram_id_3, :instagram_comment_1, :instagram_comment_2, :instagram_comment_3, :instagram_outsidecolor, :instagram_insidecolor, :facebook_id_1, :facebook_id_2, :facebook_id_3, :facebook_comment_1, :facebook_comment_2, :facebook_comment_3, :facebook_outsidecolor, :facebook_insidecolor, :youtube_id_1, :youtube_id_2, :youtube_id_3, :youtube_comment_1, :youtube_comment_2, :youtube_comment_3, :youtube_outsidecolor, :youtube_insidecolor, :tiktok_id_1, :tiktok_id_2, :tiktok_id_3, :tiktok_comment_1, :tiktok_comment_2, :tiktok_comment_3, :tiktok_outsidecolor, :tiktok_insidecolor, :sns_icons_clor, :sns_icons_color, :font_color, :font_family, :link_background_color, :link_font_color]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
