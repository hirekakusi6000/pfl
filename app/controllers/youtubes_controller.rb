class YoutubesController < ApplicationController
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
    youtube = Youtube.find(params[:id])
    youtube.destroy
    redirect_to("/users/#{current_user.id}/edit")
  end

  def create
    @youtube = Youtube.new(account_params)
    @youtube.user_id = current_user.id
    @youtube.outsidecolor = "F7819F"
    @youtube.insidecolor = "FFFFFF"

    if @youtube.save
     flash[:notice] = "リンクを追加しました"
     redirect_to("/users/#{current_user.id}/edit")
    else
     @user = User.find_by(id:current_user.id)
     render template: "users/edit"
    end
  end

    def update
    @youtube = Youtube.find_by(id:params[:id])

     if params[:account]
      @youtube.update(account_params)
      update = 0
     elsif params[:outsidecolor]
      @youtube.update(outsidecolor_params)
      update = 0
     elsif params[:insidecolor]
      @youtube.update(insidecolor_params)
      update = 0
     end

    if update = 0
      flash[:notice] = "youtubeリンク設定を更新しました"
      redirect_to("/users/#{current_user.id}/edit")
    else
      render template: "users/edit"
    end
  end

    private

  def account_params
    params.require(:youtube).permit(:account,:comment)
  end

  def outsidecolor_params
    params.require(:youtube).permit(:outsidecolor)
  end

  def insidecolor_params
    params.require(:youtube).permit(:insidecolor)
  end

end
