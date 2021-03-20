class HomesController < ApplicationController
 
  # 1ページの表示数 
  PER_PAGE = 50
  
  def top
    @q = User.ransack(params[:q])
    @users = @q.result.order("created_at DESC").page(params[:page]).per(PER_PAGE)
    if user_signed_in?
      redirect_to("/users/#{current_user.id}")
    end
  end

  def about
  end

  def service
  end

  def privacy
  end

end
