class WebsitesController < ApplicationController
  before_action :set_items, only: %i[update create]
  before_action :set_new_item, only: %i[update create]
  before_action :set_designs, only: %i[update create]

  def index
    redirect_to("/users/#{current_user.id}/edit")
  end

  def show
    redirect_to("/users/#{current_user.id}/edit")
  end

  def destroy
    website = Website.find(params[:id])
    website.destroy
    redirect_to("/users/#{current_user.id}/edit")
  end

  def create
    @website = Website.new(account_params)
    @website.user_id = current_user.id

    if params[:add_twitter]
      @website.type = "twitter"
      @website.outsidecolor = "A9D0F5"
      @website.insidecolor = "FFFFFF"
    elsif params[:add_instagram]
      @website.type = "instagram"
      @website.outsidecolor = "F5A9E1"
      @website.insidecolor = "FFFFFF"
    elsif params[:add_facebook]
      @website.type = "facebook"
      @website.outsidecolor = "D0A9F5"
      @website.insidecolor = "FFFFFF"
    elsif params[:add_youtube]
      @website.type = "youtube"
      @website.outsidecolor = "F7819F"
      @website.insidecolor = "FFFFFF"
    elsif params[:add_tiktok]
      @website.type = "tiktok"
      @website.outsidecolor = "000000"
      @website.insidecolor = "FFFFFF"
    end

    if @website.save
     flash[:notice] = "リンクを追加しました"
     redirect_to("/users/#{current_user.id}/edit")
    else
     @user = User.find_by(id:current_user.id)
     render template: "users/edit"
    end
  end

    def update
    @website = Website.find_by(id:params[:id])

     if params[:account]
      @website.update(account_params)
      update = 1
     elsif params[:outsidecolor]
      @website.update(outsidecolor_params)
      update = 1
     elsif params[:insidecolor]
      @website.update(insidecolor_params)
      update = 1
     end

    if update = 1
      flash[:notice] = "websiteリンク設定を更新しました"
      redirect_to("/users/#{current_user.id}/edit")
    else
      render template: "users/edit"
    end
  end

    private

  def account_params
    params.require(:website).permit(:account,:comment)
  end

  def outsidecolor_params
    params.require(:website).permit(:outsidecolor)
  end

  def insidecolor_params
    params.require(:website).permit(:insidecolor)
  end
end
