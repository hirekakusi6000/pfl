class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def set_designs
    @color_index = ["000000","B40404","8A4B08","868A08","5FB404","04B45F","04B4AE","045FB4","0404B4","8904B1","B4045F","585858","FF0000","FF8000","FFFF00","BFFF00","00FF80","00FFFF","00BFFF","0040FF","BF00FF","FF00BF","BDBDBD","FA5858","FAAC58","F3F781","D8F781","81F7BE","81F7F3","81DAF5","819FF7","DA81F5","F781D8","F2F2F2","F6CECE","F6E3CE","F5F6CE","E3F6CE","CEF6D8","CEF6F5","CEECF5","CED8F6","ECCEF5","F6CEEC","FFFFFF","FBEFEF","FBF5EF","FBFBEF","F5FBEF","EFFBF8","EFFBFB","EFF8FB","EFEFFB","F8EFFB","FBEFF8"]
    @font_family_index = {a:"ＭＳ 明朝,HiraMinProN-W3",b:"SimSun,cursive",c:"Impact,fantasy",d:"游ゴシック,Hiragino Sans",e:"Sawarabi Mincho,monospace",f:"alba super,HiraKakuProN-W6",g:"Lucida Console,HiraKakuProN-W3",h:"Courier New,Helvetica Neue",i:"BatangChe,Gurmukhi MN",j:"monospace,Georgia"}
  end

  def set_new_item
    @link = Link.new
    @twitter = Twitter.new
    @instagram = Instagram.new
    @facebook = Facebook.new
    @youtube = Youtube.new
    @tiktok = Tiktok.new 
    @subprofile = Subprofile.new     
  end

  def set_show_items
    @links = Link.where(user_id:params[:id])
    @twitters = Twitter.where(user_id:params[:id]).order(id: "ASC") 
    @instagrams = Instagram.where(user_id:params[:id]).order(id: "ASC")
    @facebooks = Facebook.where(user_id:params[:id]).order(id: "ASC")
    @youtubes = Youtube.where(user_id:params[:id]).order(id: "ASC")
    @tiktoks = Tiktok.where(user_id:params[:id]).order(id: "ASC")
    @subprofiles = Subprofile.where(user_id:params[:id]).order(id: "ASC")
  end

  def set_items
    if user_signed_in?
      @links = Link.where(user_id:current_user.id)
      @twitters = Twitter.where(user_id:current_user.id).order(id: "ASC") 
      @instagrams = Instagram.where(user_id:current_user.id).order(id: "ASC")
      @facebooks = Facebook.where(user_id:current_user.id).order(id: "ASC")
      @youtubes = Youtube.where(user_id:current_user.id).order(id: "ASC")
      @tiktoks = Tiktok.where(user_id:current_user.id).order(id: "ASC")
      @subprofiles = Subprofile.where(user_id:current_user.id).order(id: "ASC")
    end
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
