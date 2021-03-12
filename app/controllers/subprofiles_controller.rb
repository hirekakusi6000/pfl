class SubprofilesController < ApplicationController
  before_action :set_designs, only: %i[update create edit]
  def new
   @subprofile = Subprofile.new 
  end

  def create
    @subprofile = Subprofile.new(subprofile_params)
    @subprofile.user_id = current_user.id

    if @subprofile.save
     flash[:notice] = "サブプロフィールを追加しました"
     redirect_to("/subprofiles")
    else
     @user = User.find_by(id:current_user.id)
     render template: "subprofiles/new"
    end
  end

  def show
    @subprofile = Subprofile.find_by(id:params[:id])
  end

  def edit
    @subprofile = Subprofile.find_by(id:params[:id])
  end

  def update
    @subprofile = Subprofile.find_by(id:params[:id])

     if params[:edit_title_pfl_text]
      @subprofile.update(subprofile_params)
      update = 0
     elsif params[:edit_background_color]
      @subprofile.update(edit_background_color)
      update = 0
     elsif params[:edit_background_color]
      @subprofile.update(edit_background_color)
      update = 0
     elsif params[:edit_font_color]
      @subprofile.update(edit_font_color)
      update = 0
     elsif params[:edit_font_family]
      @subprofile.update(edit_font_family)
      update = 0
     elsif params[:open_status]
      @subprofile.update(open_status_params)
      update = 0   
     end

    if update = 0
      flash[:notice] = "更新しました"
      redirect_to("/subprofiles/#{@subprofile.id}/edit")
    else
      render template: "subprofiles/edit"
    end
  end

  # 1ページの表示数
  PER_PAGE = 20
  def index
    @q = Subprofile.ransack(params[:q])
    @subprofiles = @q.result.order("created_at DESC").page(params[:page]).per(PER_PAGE)
  end

  private

  def subprofile_params
    params.require(:subprofile).permit(:title,:pfl_text)
  end

 def edit_background_color
  params.require(:subprofile).permit(
      :background_color
  )
 end

def edit_font_color
  params.require(:subprofile).permit(
    :font_color
  )
 end

 def edit_font_family
  params.require(:subprofile).permit(
    :font_family
  )
 end

 def open_status_params
    params.require(:subprofile).permit(
    :open_status
  )
 end

end
