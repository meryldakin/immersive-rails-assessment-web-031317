class SessionsController < ApplicationController


  def index
    @user = User.find(session[:user_id])
  end
  def new

  end

  def create
    if params[:username].present? && params[:password].present?
      @user = User.find_by(username: params[:username])
      if @user.try(:authenticate, params[:password])
        session[:user_id] = @user.id
        redirect_to home_path
      end
    else
      redirect_to login_path
    end
  end

  def session_params
    params.require(:users).permit(:username, :password)
  end

end
