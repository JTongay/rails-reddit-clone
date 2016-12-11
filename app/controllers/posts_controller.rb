class PostsController < ApplicationController
  def index
    # @posts = Comments.joins(:users, :posts).select("posts.id, posts.title, posts.body, posts.image, users.username, comments.content")
    # @posts = Comments.joins(:users, :posts)
    @posts = Posts.joins(:users).select("posts.id, posts.title, posts.body, posts.image, posts.votes, users.username")
    # @posts = Posts.all
    # @comments = Comments.all


    # puts @comments.inspect
    # @comments.each do |c|
    #   puts c.inspect
    # end

    respond_to do |format|
      format.html
      format.json {render json: @posts}
    end
  end

  def new
    @post = Posts.new
  end

  def create
    # @message =
    @message = Posts.new(post_params)
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
    params.require(:posts).permit(allow)
  end


end
