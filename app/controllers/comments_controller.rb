class CommentsController < ApplicationController

  include SessionsHelper

  def index
    @post = Post.find(params[:post_id])
  end

  def new
    @comment = Comment.new
  end

  # def show
  #   @comments = Comments.joins(:post).where(post_id: params[:post_id]).order('id DESC').load
  #   @post = Post.joins(:users).where(id: params[:post_id]).select("post.title, post.body, post.image, post.votes, users.username")
  #
  #   respond_to do |format|
  #     format.html
  #     format.json {render json: @comments}
  #   end
  # end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.post_id = params[:post_id]
    if @comment.save
      redirect_to user_post_comments_path(current_user.id, params[:post_id])
    else
      # redirect_to user_post_comments_path(current_user.id, params[:post_id])
      render '/'
    end
  end

  private
  def comment_params
    allow = [:content]
    params.require(:comments).permit(allow)

  end

end
