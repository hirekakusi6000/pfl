class LinksController < ApplicationController
  
  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    @link.user_id = current_user.id
    
    if @link.save
     flash[:notice] = "リンクを追加しました"
     redirect_to("/users/#{current_user.id}/edit")
    else
     @user = User.find_by(id:current_user.id)
     @links = Link.where(user_id:current_user.id)
     render template: "users/edit"
    end
  end

  def index
    redirect_to("/users/#{current_user.id}/edit")
  end

  def show
    redirect_to("/users/#{current_user.id}/edit")
  end

  def update
    @link = Link.find_by(id:params[:id])

    if @link.update(link_params)
      flash[:notice] = "リンクを更新しました"
      redirect_to("/users/#{current_user.id}/edit")
    else
      @user = User.find_by(id:current_user.id)
      @links = Link.where(user_id:current_user.id)
      render template: "users/edit"
    end
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
