class CommentsController < ApplicationController

  def show
    @comments = Comments.joins(:post).where(post_id: params[:post_id]).order('id DESC').load
    @post = Post.joins(:users).where(id: params[:post_id]).select("post.title, post.body, post.image, post.votes, users.username")

    respond_to do |format|
      format.html
      format.json {render json: @comments}
    end
  end

end
