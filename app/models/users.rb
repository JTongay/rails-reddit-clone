# require 'bcrypt'

class Users < ActiveRecord::Base

  has_many :posts
  has_many :comments, through: :posts
  # include BCrypt
  #
  # def password
  #   @password ||= Password.new(password_hash)
  # end
  #
  # def password=(new_password)
  #   @password = Password.create(new_password)
  #   self.password_hash = @password
  # end
  #
  # def create
  #   @user = Users.new(params[:user])
  #   @user.password = params[:password]
  #   @user.save!
  # end
  #
  # def login
  #   @user = Users.find_by_username(params[:username])
  #   if @user.password == params[:password]
  #     give_token
  #   else
  #     redirect_to home_url
  #   end
  # end

end
