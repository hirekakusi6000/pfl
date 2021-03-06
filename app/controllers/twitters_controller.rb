class TwittersController < ApplicationController

  def index
    redirect_to("/users/#{current_user.id}/edit")
  end

  def show
    redirect_to("/users/#{current_user.id}/edit")
  end

  def destroy
    twitter = Twitter.find(params[:id])
    twitter.destroy
    redirect_to("/users/#{current_user.id}/edit")
  end

  def create
    @twitter = Twitter.new(account_params)
    @twitter.user_id = current_user.id
    @twitter.outsidecolor = "A9D0F5"
    @twitter.insidecolor = "FFFFFF"

    if @twitter.save
     flash[:notice] = "リンクを追加しました"
     redirect_to("/users/#{current_user.id}/edit")
    else
     @user = User.find_by(id:current_user.id)
     @links = Link.where(user_id:current_user.id)
     @twitters = Twitter.where(user_id:current_user.id).order(id: "ASC") 
     @link = Link.new
     render template: "users/edit"
    end
  end

    def update
    @twitter = Twitter.find_by(id:params[:id])

     if params[:account]
      @twitter.update(account_params)
      update = 0
     elsif params[:outsidecolor]
      @twitter.update(outsidecolor_params)
      update = 0
     elsif params[:insidecolor]
      @twitter.update(insidecolor_params)
      update = 0
     end

    if update = 0
      flash[:notice] = "Twitterリンク設定を更新しました"
      redirect_to("/users/#{current_user.id}/edit")
    else
      @link = Link.new
      @links = Link.where(user_id:current_user.id)
      render template: "users/edit"
    end
  end

    private

  def account_params
    params.require(:twitter).permit(:account,:comment)
  end

  def outsidecolor_params
    params.require(:twitter).permit(:outsidecolor)
  end

  def insidecolor_params
    params.require(:twitter).permit(:insidecolor)
  end

end

