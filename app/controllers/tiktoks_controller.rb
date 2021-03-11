class TiktoksController < ApplicationController
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
    tiktok = Tiktok.find(params[:id])
    tiktok.destroy
    redirect_to("/users/#{current_user.id}/edit")
  end

  def create
    @tiktok = Tiktok.new(account_params)
    @tiktok.user_id = current_user.id
    @tiktok.outsidecolor = "000000"
    @tiktok.insidecolor = "FFFFFF"

    if @tiktok.save
     flash[:notice] = "リンクを追加しました"
     redirect_to("/users/#{current_user.id}/edit")
    else
     @user = User.find_by(id:current_user.id)
     render template: "users/edit"
    end
  end

    def update
    @tiktok = Tiktok.find_by(id:params[:id])

     if params[:account]
      @tiktok.update(account_params)
      update = 0
     elsif params[:outsidecolor]
      @tiktok.update(outsidecolor_params)
      update = 0
     elsif params[:insidecolor]
      @tiktok.update(insidecolor_params)
      update = 0
     end

    if update = 0
      flash[:notice] = "tiktokリンク設定を更新しました"
      redirect_to("/users/#{current_user.id}/edit")
    else
      render template: "users/edit"
    end
  end

    private

  def account_params
    params.require(:tiktok).permit(:account,:comment)
  end

  def outsidecolor_params
    params.require(:tiktok).permit(:outsidecolor)
  end

  def insidecolor_params
    params.require(:tiktok).permit(:insidecolor)
  end

end
