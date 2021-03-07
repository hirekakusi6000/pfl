class FacebooksController < ApplicationController

  before_action :set_items, only: %i[update create]
  before_action :set_new_item, only: %i[update create]

  def index
    redirect_to("/users/#{current_user.id}/edit")
  end

  def show
    redirect_to("/users/#{current_user.id}/edit")
  end

  def destroy
    facebook = Facebook.find(params[:id])
    facebook.destroy
    redirect_to("/users/#{current_user.id}/edit")
  end

  def create
    @facebook = Facebook.new(account_params)
    @facebook.user_id = current_user.id
    @facebook.outsidecolor = "D0A9F5"
    @facebook.insidecolor = "FFFFFF"

    if @facebook.save
     flash[:notice] = "リンクを追加しました"
     redirect_to("/users/#{current_user.id}/edit")
    else
     @user = User.find_by(id:current_user.id)
     render template: "users/edit"
    end
  end

    def update
     @facebook = Facebook.find_by(id:params[:id])

     if params[:account]
      @facebook.update(account_params)
      update = 0
     elsif params[:outsidecolor]
      @facebook.update(outsidecolor_params)
      update = 0
     elsif params[:insidecolor]
      @facebook.update(insidecolor_params)
      update = 0
     end

    if update = 0
      flash[:notice] = "facebookリンク設定を更新しました"
      redirect_to("/users/#{current_user.id}/edit")
    else
      render template: "users/edit"
    end
  end

    private

  def account_params
    params.require(:facebook).permit(:account,:comment)
  end

  def outsidecolor_params
    params.require(:facebook).permit(:outsidecolor)
  end

  def insidecolor_params
    params.require(:facebook).permit(:insidecolor)
  end
end