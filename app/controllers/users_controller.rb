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
    @color_index=["000000","B40404","8A4B08","868A08","5FB404","04B45F","04B4AE","045FB4","0404B4","8904B1","B4045F","585858","FF0000","FF8000","FFFF00","BFFF00","00FF80","00FFFF","00BFFF","0040FF","BF00FF","FF00BF","BDBDBD","FA5858","FAAC58","F3F781","D8F781","81F7BE","81F7F3","81DAF5","819FF7","DA81F5","F781D8","F2F2F2","F6CECE","F6E3CE","F5F6CE","E3F6CE","CEF6D8","CEF6F5","CEECF5","CED8F6","ECCEF5","F6CEEC","FFFFFF","FBEFEF","FBF5EF","FBFBEF","F5FBEF","EFFBF8","EFFBFB","EFF8FB","EFEFFB","F8EFFB","FBEFF8"]
  end

def update
  user=User.find_by(id:current_user.id)
  user.update!(user_params)
  
  user.pfl_text=params[:pfl_text]
  user.name=params[:name]
  user.twitter_id_1=params[:twitter]
  user.twitter_comment_1=params[:twitter_text1]
  user.twitter_id_2=params[:twitter2]
  user.twitter_comment_2=params[:twitter_text2]
  user.twitter_id_3=params[:twitter_text2]
  user.twitter_comment_3=params[:twitter3]
  user.instagram_id_1=params[:instagram]
  user.instagram_comment_1=params[:instagram_text1]
  user.instagram_id_2=params[:instagram2]
  user.instagram_comment_2=params[:instagram_text2]
  user.facebook_id_1=params[:facebook]
  user.facebook_comment_1=params[:facebook_text1]
  user.facebook_id_2=params[:facebook2]
  user.facebook_comment_2=params[:facebook_text2]
  user.youtube_id_1=params[:youtube]
  user.youtube_comment_1=params[:youtube_text1]
  user.youtube_id_2=params[:youtube2]
  user.youtube_comment_2=params[:youtube_text2]
  user.tiktok_id_1=params[:tiktok]
  user.tiktok_comment_1=params[:tiktok_text1]
  user.tiktok_id_2=params[:tiktok2]
  user.tiktok_comment_2=params[:tiktok_text2]

  if params[:i]
    user.icon_image="#{user.id}.jpg"
    image = params[:i]
    File.binwrite("public/user_images/#{user.icon_image}", icon_image.read)
  end

  if params[:h]
    user.header_image="header#{user.id}.jpg"
    header_image = params[:h]
    File.binwrite("public/user_images/#{user.header_image}", header_image.read)
  end

  user.save

  if params[:back_color_update]
    user.background_color=params[:back_color]
    render("users/edit")
  elsif params[:twitter_color_outside_update]
    user.twitter_outsidecolor=params[:twitter_color_outside]
    render("users/edit")
  elsif params[:twitter_color_inside_update]
    user.twitter_insidecolor=params[:twitter_color_inside]
    render("users/edit")
  elsif params[:instagram_color_outside_update]
    user.instagram_outsidecolor=params[:instagram_color_outside]
    render("users/edit")
  elsif params[:instagram_color_inside_update]
    user.instagram_insidecolor=params[:instagram_color_inside]
    render("users/edit")
  elsif params[:facebook_color_outside_update]
    user.facebook_outsidecolor=params[:facebook_color_outside]
    render("users/edit")
  elsif params[:facebook_color_inside_update]
    user.facebook_insidecolor=params[:facebook_color_inside]
    render("users/edit")
  elsif params[:youtube_color_outside_update]
    user.youtube_outsidecolor=params[:youtube_color_outside]
    render("users/edit")
  elsif params[:youtube_color_inside_update]
    user.youtube_insidecolor=params[:youtube_color_inside]
    render("users/edit")
  elsif params[:tiktok_color_outside_update]
    user.tiktok_outsidecolor=params[:tiktok_color_outside]
    render("users/edit")
  elsif params[:tiktok_color_inside_update]
    user.tiktok_insidecolor=params[:tiktok_color_inside]
    render("users/edit")
  elsif params[:twitter_id_update]
    user.twitter_id_1=params[:twitter]
    user.twitter_comment_1=params[:Twitter_text1]
    user.twitter_id_1=params[:Twitter2]
    user.twitter_comment_2=params[:Twitter_text2]
    user.twitter_id_1=params[:Twitter3]
    user.twitter_comment_3=params[:Twitter_text3]
    render("user/pfl_edit")
  elsif params[:instagram_id_update]
    user.instagram_id_1=params[:instagram]
    user.instagram_comment_1=params[:instagram_text1]
    user.instagram_id_2=params[:instagram2]
    user.instagram_comment_2=params[:instagram_text2]
    render("user/pfl_edit")
  elsif params[:facebook_id_update]
    user.facebook_id_1=params[:facebook]
    user.facebook_comment_1=params[:facebook_text1]
    user.facebook_id_2=params[:facebook2]
    user.facebook_comment_2=params[:facebook_text2]
    render("user/pfl_edit")
  elsif params[:youtube_id_update]
    user.youtube_id_1=params[:youtube]
    user.youtube_comment_1=params[:youtube_text1]
    user.youtube_id_2=params[:youtube2]
    user.youtube_comment_2=params[:youtube_text2]
    render("user/pfl_edit")
  elsif params[:tiktok_id_update]
    user.tiktok_id_1=params[:tiktok]
    user.tiktok_comment_1=params[:tiktok_text1]
    user.tiktok_id_2=params[:tiktok2]
    user.tiktok_comment_2=params[:tiktok_text2]
    render("user/pfl_edit")
  else
    redirect_to("/users/#{user.id}")
  end
    user.save
end

 private

  def user_params
    params.require(:user).permit(:name,:icon_image,:header_image)
  end

end