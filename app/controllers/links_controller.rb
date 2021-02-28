class LinksController < ApplicationController
    def new
    @link = Link.new
  end

  def create
    link = Link.new(link_params)
    link.user_id = current_user.id
    if link.save
     flash[:notice] = "リンクを追加しました"
     redirect_to("/users/#{current_user.id}/edit")
    else
     flash.now[:alert] = "投稿に失敗しました"
     @user = User.find_by(id:current_user.id)
    @links = Link.where(user_id:current_user.id)
    @link = Link.new
    
     render template: "users/edit"
    end
  end

  def show
    @link = Link.find(params[:id])
  end

  def index
    @links = Link.order(:id).includes(:user)
  end

  def update
    @link = Link.find_by(id:params[:id])
    @link.update!(link_params)
    redirect_to("/users/#{current_user.id}/edit")
  end

  def destroy
    link = Link.find(params[:id])
    link.destroy
    redirect_to("/users/#{current_user.id}/edit")
  end

  private

  def link_params
    params.require(:link).permit(:title,:url,:coment)
  end

end
