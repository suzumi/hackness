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
    # @user = User.
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)

    # respond_to do |format|
    if @article.save
      rendar json: { status: 'success'}
      # format.html { redirect_to @article, notice: 'Article was successfully created.' }
      # format.json { render :show, status: :created, location: @article }
    else
      rendar json: { status: 'error'}
      # format.html { render :new }
      # format.json { render json: @article.errors, status: :unprocessable_entity }
    end
    # end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
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
