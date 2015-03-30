class UsersController < ApplicationController
  before_action :authenticate_user!
  # , :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  # def set_article
  #   @article = User.find(params[:id])
  # end

  # Never trust parameters from the scary internet, only allow the white list through.
  # def article_params
  #   params.require(:user).permit(:name, :url, :blog_id)
  # end

  def authenticate_user!
    session[:user_return_to] = env['PATH_INFO']
    redirect_to user_omniauth_authorize_path(:twitter) unless user_signed_in?
  end
end
