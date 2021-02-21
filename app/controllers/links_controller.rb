class LinksController < ApplicationController
    def new
    @link = Link.new
  end

  def create
    link = Link.new(link_params)
    link.user_id = current_user.id
    link.save!
    redirect_to link
  end

  def show
    @link = Link.find(params[:id])
  end

  def index
    @links = Link.order(:id).includes(:user)
  end

  private

  def link_params
    params.require(:link).permit(:coment)
  end

end
