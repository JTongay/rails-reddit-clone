class PostsController < ApplicationController
  include SessionsHelper
  def index
    puts current_user.inspect
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
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end


  private
  def post_params
    allow = [:title, :body, :image, :user_id]
    params.require(:post).permit(allow)
  end


end
