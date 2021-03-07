class UsersController < ApplicationController

  before_action :set_items, only: %i[show edit update]
  before_action :set_new_item, only: %i[edit update create]
  before_action :set_show_items, only: %i[show]

  # 1ページの表示数
  PER_PAGE = 20
  def index
    @q = User.ransack(params[:q])
    @users = @q.result.order("created_at DESC").page(params[:page]).per(PER_PAGE)
  end

  def show
    @user = User.find_by(id:params[:id])
  end

  def edit
    @user = User.find_by(id:current_user.id)
  end

  def update
    @user = User.find_by(id:current_user.id)

     if params[:edit_name_introduce]
      @user.update(edit_name_introduce)
      update = 0
     elsif params[:edit_background_color]
      @user.update(edit_background_color)
      update = 0
     elsif params[:edit_icon_image]
      @user.update(edit_icon_image)
      update = 0
     elsif params[:edit_header_image]
      @user.update(edit_header_image)
      update = 0
     elsif params[:edit_font_color]
      @user.update(edit_font_color)
      update = 0
     elsif params[:edit_font_family]
      @user.update(edit_font_family)
      update = 0
     elsif params[:edit_link_font_color]
      @user.update(edit_link_font_color)
      update = 0
    elsif params[:edit_link_background_color]
      @user.update(edit_link_background_color)
      update = 0
     end

    if update = 0
      flash[:notice] = "更新しました"
      redirect_to("/users/#{current_user.id}/edit")
    else
      render template: "users/edit"
    end
  end

 private

 def edit_name_introduce
  params.require(:user).permit(
      :name,
      :pfl_text,
  )
 end

 def edit_background_color
  params.require(:user).permit(
      :background_color
  )
 end

 def edit_icon_image
  params.require(:user).permit(
    :icon_image
  )
 end

 def edit_header_image
  params.require(:user).permit(
    :header_image
  )
 end

def edit_font_color
  params.require(:user).permit(
    :font_color
  )
 end

 def edit_font_family
  params.require(:user).permit(
    :font_family
  )
 end

def edit_link_font_color
  params.require(:user).permit(
    :link_font_color
  )
 end
 
 def edit_link_background_color
  params.require(:user).permit(
    :link_background_color
  )
 end

end