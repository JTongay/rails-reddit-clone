class SessionsController < ApplicationController
  def new
  end

  # def create
  #   puts params[:username]
  #   user = User.find_by_username(params[:session][:username])
  #   if user && user.authenticate(params[:session][:password_digest])
  #     session[:users_id] = user.id
  #     redirect_to '/'
  #   else
  #     redirect_to '/login'
  # end
end
