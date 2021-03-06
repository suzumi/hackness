# require "feedbag"
require "feedjira"
before_action :authenticate_user!

class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  # GET /blogs
  # GET /blogs.json
  def index
    @blogs = Blog.all
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @articles = @blog.articles.order("published DESC")
    @tags = @blog.tags
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @blog = Blog.create(blog_params)
    Feedjira::Feed.add_common_feed_element 'image'
    feed = Feedjira::Feed.fetch_and_parse(@blog.feed)
    @blog.last_modified = feed.last_modified
    @blog.blog_description = feed.description
    feed.entries.each do |entry|
      @blog.articles.create(name: entry.title, url: entry.url, article_description: entry.summary, published: entry.published, updated: entry.updated)
    end

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:name, :url, :feed)
    end

    def authenticate_user!
      session[:user_return_to] = env['PATH_INFO']
      redirect_to user_omniauth_authorize_path(:twitter) unless user_signed_in?
    end
end
