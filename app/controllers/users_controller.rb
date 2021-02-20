class UsersController < ApplicationController
  # 1ページの表示数
  PER_PAGE = 20
  def index
    @q = User.ransack(params[:q])
    @users = @q.result.page(params[:page]).per(PER_PAGE)
    @page = "index"
  end

  def show
    @user=User.find_by(id:params[:id])
    @page="mypfl"
  end

  def edit
    @user=User.find_by(id:current_user.id)
  end

  def update
    @user=User.find_by(id:current_user.id)
    @user.update!(user_params)

    if params[:update]
      render("users/edit")
    else
      redirect_to("/users/#{@user.id}")
    end
      @user.save
  end

 private

  def user_params
    params.require(:user).permit(
      :name,
      :pfl_text,
      :icon_image,
      :header_image,
      :background_color,
      :twitter_outsidecolor,
      :instagram_outsidecolor,
      :twitter_id_1,
      :twitter_comment_1,
      :twitter_id_2,
      :twitter_comment_2,
      :twitter_id_3,
      :twitter_comment_3,
      :instagram_outsidecolor,
      :instagram_insidecolor,
      :instagram_id_1,
      :instagram_comment_1,
      :instagram_id_2,
      :instagram_comment_2,
      :instagram_id_3,
      :instagram_comment_3,
      :facebook_outsidecolor,
      :facebook_insidecolor,
      :facebook_id_1,
      :facebook_comment_1,
      :facebook_id_2,
      :facebook_comment_2,
      :facebook_id_3,
      :facebook_comment_3,
      :youtube_outsidecolor,
      :youtube_insidecolor,
      :youtube_id_1,
      :youtube_comment_1,
      :youtube_id_2,
      :youtube_comment_2,
      :youtube_id_3,
      :youtube_comment_3,
      :tiktok_outsidecolor,
      :tiktok_insidecolor,
      :tiktok_id_1,
      :tiktok_comment_1,
      :tiktok_id_2,
      :tiktok_comment_2,
      :tiktok_id_3,
      :tiktok_comment_3
    )
  end

end