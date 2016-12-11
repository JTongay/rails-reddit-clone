class UsersController < ApplicationController

  def new
    @user = Users.new
  end

  def create
    @user = Users.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private
  def user_params
    params.require(:users).permit(:username, :password, :password_confirmation)
  end

end
