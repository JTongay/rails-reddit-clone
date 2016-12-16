class PostsController < ApplicationController
  include SessionsHelper
  def index
    @posts = Post.all

    respond_to do |format|
      format.html
      format.json {render json: @post}
    end
  end

  def new
    @post = Post.new
  end

  def create
    @message = Post.new(post_params)
    @message.user_id = current_user.id
  	if @message.save
      redirect_to user_posts_path(current_user.id)
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(update_params)
    redirect_to post_path(@post)
  end

  def destroy
    @comments = Comment.find_by_post_id(params[:id])
    if @comments
      @comments.destroy
    end
    @post = Post.find(params[:id]).destroy
    redirect_to user_path(current_user.id)
  end


  private
  def post_params
    allow = [:title, :body, :image, :user_id]
    params.require(:post).permit(allow)
  end

  def update_params
    allow = [:title, :body, :image, :user_id]
    params.require(:post).permit(allow)
  end


end
