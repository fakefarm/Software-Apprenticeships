class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      if @user.admin == true
        redirect_to admins_url, notice: "Welcome Back"
      else
        redirect_to root_url, notice: "Thank you for signing up!"
      end
    else
      render "new"
    end
  end
end
