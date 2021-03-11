class LinksController < ApplicationController
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
    link = Link.find(params[:id])
    link.destroy
    redirect_to("/users/#{current_user.id}/edit")
  end

  def create
    @link = Link.new(add_link_params)
    @link.user_id = current_user.id
    @link.background_color = "FAFAFA"
    @link.font_color = "2E2E2E"

    if @link.save
     flash[:notice] = "リンクを追加しました"
     redirect_to("/users/#{current_user.id}/edit")
    else
     @user = User.find_by(id:current_user.id)
     render template: "users/edit"
    end
  end

    def update
    @link = Link.find_by(id:params[:id])

     if params[:edit_link]
      @link.update(add_link_params)
      update = 0
     elsif params[:background_color]
      @link.update(background_color_params)
      update = 0
     elsif params[:font_color]
      @link.update(font_color_params)
      update = 0
     end

    if update = 0
      flash[:notice] = "リンク設定を更新しました"
      redirect_to("/users/#{current_user.id}/edit")
    else
      render template: "users/edit"
    end
  end

    private

  def add_link_params
    params.require(:link).permit(:url,:coment,:title)
  end

  def background_color_params
    params.require(:link).permit(:background_color)
  end

  def font_color_params
    params.require(:link).permit(:font_color)
  end

end