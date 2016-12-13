class SessionsController < ApplicationController
  def new
  end

  def create
    puts params[:username]
    user = User.find_by_username(params[:session][:username])
    puts user
    if user && user.authenticate(params[:session][:password])
      puts "booyah"
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

end
