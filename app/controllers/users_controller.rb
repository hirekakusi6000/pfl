class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(
      name: params[:name], 
      icon_image:"d.PNG",
      header_image:"d.PNG",
    )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/users")
    else
      render "new"
    end
  end

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
    @user=User.find_by(id:session[:user_id])
  end

  def update
  @user=User.find_by(id:session[:user_id])
  @user.pfl_text=params[:pfl_text]
  @user.name=params[:name]
  @user.twitter_id_1=params[:twitter]
  @user.twitter_comment_1=params[:twitter_text1]
  @user.twitter_id_2=params[:twitter2]
  @user.twitter_comment_2=params[:twitter_text2]
  @user.twitter_id_3=params[:twitter_text2]
  @user.twitter_comment_3=params[:twitter3]
  @user.instagram_id_1=params[:instagram]
  @user.instagram_comment_1=params[:instagram_text1]
  @user.instagram_id_2=params[:instagram2]
  @user.instagram_comment_2=params[:instagram_text2]
  @user.facebook_id_1=params[:facebook]
  @user.facebook_comment_1=params[:facebook_text1]
  @user.facebook_id_2=params[:facebook2]
  @user.facebook_comment_2=params[:facebook_text2]
  @user.youtube_id_1=params[:youtube]
  @user.youtube_comment_1=params[:youtube_text1]
  @user.youtube_id_2=params[:youtube2]
  @user.youtube_comment_2=params[:youtube_text2]
  @user.tiktok_id_1=params[:tiktok]
  @user.tiktok_comment_1=params[:tiktok_text1]
  @user.tiktok_id_2=params[:tiktok2]
  @user.tiktok_comment_2=params[:tiktok_text2]
  if params[:i]
 @user.image="#{@user.id}.jpg"
 image = params[:i]
 File.binwrite("public/user_images/#{@user.image}", image.read)
  end
  if params[:h]
 @user.header_image="header#{@user.id}.jpg"
 header_image = params[:h]
 File.binwrite("public/user_images/#{@user.header_image}", header_image.read)
  end
  @user.save
  if params[:back_color_update]
    @user.background_color=params[:back_color]
    render("users/edit")
  elsif params[:twitter_color_soto_update]
   @user.twitter_outsidecolor=params[:twitter_color_soto]
    render("users/edit")
  elsif params[:twitter_color_uti_update]
   @user.twitter_insidecolor=params[:twitter_color_uti]
    render("users/edit")
  elsif params[:instagram_color_soto_update]
   @user.instagram_outsidecolor=params[:instagram_color_soto]
    render("users/edit")
  elsif params[:instagram_color_uti_update]
   @user.instagram_insidecolor=params[:instagram_color_uti]
    render("users/edit")
  elsif params[:facebook_color_soto_update]
   @user.facebook_outsidecolor=params[:facebook_color_soto]
    render("users/edit")
  elsif params[:facebook_color_uti_update]
   @user.facebook_insidecolor=params[:facebook_color_uti]
    render("users/edit")
  elsif params[:youtube_color_soto_update]
   @user.youtube_outsidecolor=params[:youtube_color_soto]
    render("users/edit")
  elsif params[:youtube_color_uti_update]
   @user.youtube_insidecolor=params[:youtube_color_uti]
    render("users/edit")
  elsif params[:tiktok_color_soto_update]
   @user.tiktok_outsidecolor=params[:tiktok_color_soto]
    render("users/edit")
  elsif params[:tiktok_color_uti_update]
   @user.tiktok_insidecolor=params[:tiktok_color_uti]
    render("users/edit")
  elsif params[:twitter_id_update]
   @user.twitter_id_1=params[:twitter]
   @user.twitter_comment_1=params[:Twitter_text1]
   @user.twitter_id_1=params[:Twitter2]
   @user.twitter_comment_2=params[:Twitter_text2]
   @user.twitter_id_1=params[:Twitter3]
   @user.twitter_comment_3=params[:Twitter_text3]
    render("user/pfl_edit")
  elsif params[:instagram_id_update]
   @user.instagram_id_1=params[:instagram]
   @user.instagram_comment_1=params[:instagram_text1]
   @user.instagram_id_2=params[:instagram2]
   @user.instagram_comment_2=params[:instagram_text2]
    render("user/pfl_edit")
  elsif params[:facebook_id_update]
   @user.facebook_id_1=params[:facebook]
   @user.facebook_comment_1=params[:facebook_text1]
   @user.facebook_id_2=params[:facebook2]
   @user.facebook_comment_2=params[:facebook_text2]
    render("user/pfl_edit")
  elsif params[:youtube_id_update]
   @user.youtube_id_1=params[:youtube]
   @user.youtube_comment_1=params[:youtube_text1]
   @user.youtube_id_2=params[:youtube2]
   @user.youtube_comment_2=params[:youtube_text2]
    render("user/pfl_edit")
  elsif params[:tiktok_id_update]
   @user.tiktok_id_1=params[:tiktok]
   @user.tiktok_comment_1=params[:tiktok_text1]
   @user.tiktok_id_2=params[:tiktok2]
   @user.tiktok_comment_2=params[:tiktok_text2]
    render("user/pfl_edit")
 else
    redirect_to("/users/#{@user.id}")
 end
    @user.save
end

  def login_form
  end

  def login
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      redirect_to("/user/index")
      session[:user_id]=@user.id
      flash[:notice]="ログインに成功しました"
    else
      @email=params[:email]
      @password=params[:password]
      render("user/login_form")
      flash[:notice]="メールアドレスかパスワードが間違っています"
    end
  end

  def logout
    session[:user_id]=nil
    flash[:notice]="ログアウトしました"
    redirect_to("/homes")
  end

end