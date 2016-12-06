class PostsController < ApplicationController

  def index
    @posts = Posts.joins(:users).select("posts.id, posts.title, posts.body, posts.image, users.username")

    respond_to do |format|
      format.html
      format.json {render json: @posts}
    end
  end
  
end
