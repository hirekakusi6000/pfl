class HomesController < ApplicationController
 
  # 1ページの表示数
  PER_PAGE = 50
  
  def top
    @q = User.ransack(params[:q])
    @users = @q.result.order("created_at DESC").page(params[:page]).per(PER_PAGE)
  end

end
