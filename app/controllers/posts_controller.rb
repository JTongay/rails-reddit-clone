class PostsController < ApplicationController

  def index
    # @posts = Comments.joins(:users, :posts).select("posts.id, posts.title, posts.body, posts.image, users.username, comments.content")
    @posts = Posts.joins(:users).select("posts.id, posts.title, posts.body, posts.image, users.username")

    @posts.each do |p|
      puts p.inspect
      @comments = Comments.joins(:posts).find(p.id)
    end


    respond_to do |format|
      format.html
      format.json {render json: @posts}
    end
  end

end
