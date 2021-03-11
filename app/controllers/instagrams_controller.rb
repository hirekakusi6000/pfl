class InstagramsController < ApplicationController
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
    instagram = Instagram.find(params[:id])
    instagram.destroy
    redirect_to("/users/#{current_user.id}/edit")
  end

  def create
    @instagram = Instagram.new(account_params)
    @instagram.user_id = current_user.id
    @instagram.outsidecolor = "F5A9E1"
    @instagram.insidecolor = "FFFFFF"

    if @instagram.save
     flash[:notice] = "リンクを追加しました"
     redirect_to("/users/#{current_user.id}/edit")
    else
     @user = User.find_by(id:current_user.id)
     @links = Link.where(user_id:current_user.id)
     @instagrams = Instagram.where(user_id:current_user.id).order(id: "ASC") 
     @link = Link.new
     render template: "users/edit"
    end
  end

    def update
    @instagram = Instagram.find_by(id:params[:id])

     if params[:account]
      @instagram.update(account_params)
      update = 0
     elsif params[:outsidecolor]
      @instagram.update(outsidecolor_params)
      update = 0
     elsif params[:insidecolor]
      @instagram.update(insidecolor_params)
      update = 0
     end

    if update = 0
      flash[:notice] = "instagramリンク設定を更新しました"
      redirect_to("/users/#{current_user.id}/edit")
    else
      @link = Link.new
      @links = Link.where(user_id:current_user.id)
      render template: "users/edit"
    end
  end

    private

  def account_params
    params.require(:instagram).permit(:account,:comment)
  end

  def outsidecolor_params
    params.require(:instagram).permit(:outsidecolor)
  end

  def insidecolor_params
    params.require(:instagram).permit(:insidecolor)
  end

end