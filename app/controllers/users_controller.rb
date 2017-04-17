class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    @user.save
    redirect_to home_path
  end


  def user_params
    params.require(:user).permit(:username, :password)
  end
end
