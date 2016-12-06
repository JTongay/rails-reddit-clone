class PostsController < ApplicationController

  def index
    @posts = Posts.all
    @comments = Comments.all
    @users = Users.all
  end
end
