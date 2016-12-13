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
    # @message =
    @message = Post.new(post_params)
    puts @post.inspect
  	if @message.save
      redirect_to '/'
    else
      render 'new'
    end
  end


  private
  def post_params
    allow = [:title, :body, :image]
    params.require(:post).permit(allow)
  end


end
