class UsersController < ApplicationController
  # 1ページの表示数
  PER_PAGE = 20
  def index
    @q = User.ransack(params[:q])
    @users = @q.result.order("created_at DESC").page(params[:page]).per(PER_PAGE)
  end

  def show
    @user = User.find_by(id:params[:id])
    @links = Link.where(user_id:params[:id])
    @twitters = Twitter.where(user_id:current_user.id).order(id: "ASC")   
  end

  def edit
    @user = User.find_by(id:current_user.id)
    @links = Link.where(user_id:current_user.id)
    @twitters = Twitter.where(user_id:current_user.id).order(id: "ASC")   
    @link = Link.new
    @twitter = Twitter.new
    
  end

  def update
    @user = User.find_by(id:current_user.id)

     if params[:edit_name_introduce]
      @user.update(edit_name_introduce)
      update = 0
     elsif params[:edit_background_color]
      @user.update(edit_background_color)
      update = 0
     elsif params[:edit_icon_image]
      @user.update(edit_icon_image)
      update = 0
     elsif params[:edit_header_image]
      @user.update(edit_header_image)
      update = 0
     elsif params[:edit_font_color]
      @user.update(edit_font_color)
      update = 0
     elsif params[:edit_font_family]
      @user.update(edit_font_family)
      update = 0
     elsif params[:edit_link_font_color]
      @user.update(edit_link_font_color)
      update = 0
    elsif params[:edit_link_background_color]
      @user.update(edit_link_background_color)
      update = 0
     elsif params[:edit_twitter_insidecolor]
      @user.update(edit_twitter_insidecolor)
      update = 0
     elsif params[:edit_twitter_outsidecolor]
      @user.update(edit_twitter_outsidecolor)
      update = 0
     elsif params[:edit_twitter]
      @user.update(edit_twitter)
      update = 0
     elsif params[:edit_instagram_outsidecolor]
      @user.update(edit_instagram_outsidecolor)
      update = 0
     elsif params[:edit_instagram_insidecolor]
      @user.update(edit_instagram_insidecolor)
      update = 0
     elsif params[:edit_instagram]
      @user.update(edit_instagram)
      update = 0
     elsif params[:edit_facebook_outsidecolor]
      @user.update(edit_facebook_outsidecolor)
      update = 0
     elsif params[:edit_facebook_insidecolor]
      @user.update(edit_facebook_insidecolor)
      update = 0
     elsif params[:edit_facebook]
      @user.update(edit_facebook)
      update = 0
     elsif params[:edit_youtube_outsidecolor]
      @user.update(edit_youtube_outsidecolor)
      update = 0
     elsif params[:edit_youtube_insidecolor]
      @user.update(edit_youtube_insidecolor)
      update = 0
     elsif params[:edit_youtube]
      @user.update(edit_youtube)
      update = 0
     elsif params[:edit_tiktok_outsidecolor]
      @user.update(edit_tiktok_outsidecolor)
      update = 0
     elsif params[:edit_tiktok_insidecolor]
      @user.update(edit_tiktok_insidecolor)
      update = 0
     elsif params[:edit_tiktok]
      @user.update(edit_tiktok)
      update = 0
     end

    if update = 0
      flash[:notice] = "更新しました"
      redirect_to("/users/#{current_user.id}/edit")
    else
      @link = Link.new
      @links = Link.where(user_id:current_user.id)
      render template: "users/edit"
    end
  end

 private

 def edit_name_introduce
  params.require(:user).permit(
      :name,
      :pfl_text,
  )
 end

 def edit_background_color
  params.require(:user).permit(
      :background_color
  )
 end

 def edit_icon_image
  params.require(:user).permit(
    :icon_image
  )
 end

 def edit_header_image
  params.require(:user).permit(
    :header_image
  )
 end

def edit_font_color
  params.require(:user).permit(
    :font_color
  )
 end

 def edit_font_family
  params.require(:user).permit(
    :font_family
  )
 end

def edit_link_font_color
  params.require(:user).permit(
    :link_font_color
  )
 end
 
 def edit_link_background_color
  params.require(:user).permit(
    :link_background_color
  )
 end

 def edit_twitter_insidecolor
  params.require(:user).permit(
    :twitter_insidecolor,
  )
 end

 def edit_twitter_outsidecolor
  params.require(:user).permit(
    :twitter_outsidecolor,
  )
 end

 def edit_twitter
  params.require(:user).permit(
    :twitter_id_1,
    :twitter_comment_1,
    :twitter_id_2,
    :twitter_comment_2,
    :twitter_id_3,
    :twitter_comment_3
  )
 end

 def edit_instagram_outsidecolor
  params.require(:user).permit(
    :instagram_outsidecolor
  )
 end
  
 def edit_instagram_insidecolor
  params.require(:user).permit(
    :instagram_insidecolor
  )
 end
 
 def edit_instagram
  params.require(:user).permit(
      :instagram_id_1,
      :instagram_comment_1,
      :instagram_id_2,
      :instagram_comment_2,
      :instagram_id_3,
      :instagram_comment_3
  )
 end
 
 def edit_facebook_outsidecolor
  params.require(:user).permit(
    :facebook_outsidecolor
  )
 end

 def edit_facebook_insidecolor
  params.require(:user).permit(
    :facebook_insidecolor
  )
 end

 def edit_facebook
  params.require(:user).permit(
    :facebook_id_1,
    :facebook_comment_1,
    :facebook_id_2,
    :facebook_comment_2,
    :facebook_id_3,
    :facebook_comment_3
  )
 end

 def edit_youtube_outsidecolor
  params.require(:user).permit(
    :youtube_outsidecolor
  )
 end

def edit_youtube_insidecolor
  params.require(:user).permit(
    :youtube_insidecolor
  )
end

 def edit_youtube
  params.require(:user).permit(
      :youtube_id_1,
      :youtube_comment_1,
      :youtube_id_2,
      :youtube_comment_2,
      :youtube_id_3,
      :youtube_comment_3
  )
 end

 def edit_tiktok_outsidecolor
  params.require(:user).permit(
    :tiktok_outsidecolor
  )
 end

 def edit_tiktok_insidecolor
  params.require(:user).permit(
    :tiktok_insidecolor
  )
 end

def edit_tiktok
  params.require(:user).permit(
      :tiktok_id_1,
      :tiktok_comment_1,
      :tiktok_id_2,
      :tiktok_comment_2,
      :tiktok_id_3,
      :tiktok_comment_3,
      :link_background_color,
      :link_font_color
  )
end

end