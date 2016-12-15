class UsersController < ApplicationController

  include SessionsHelper

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
      flash[:notice] = "Successfully added account"
    else
      redirect_to '/signup'
      flash[:notice] = "Try Again Scrub"
    end
  end

  def destroy
    @comments = Comment.find_by_user_id(params[:id])
      if @comments
        @comments.destroy
      end
    @posts = Post.find_by_user_id(params[:id])
      if @posts
        @posts.destroy
      end
    @user = User.find(params[:id]).destroy
    flash[:message] = "Successfully Deleted Account"
    redirect_to '/signup'
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
