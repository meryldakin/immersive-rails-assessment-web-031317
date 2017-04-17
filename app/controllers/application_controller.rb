class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :require_login

  def current_user
    session[user_id].present?
  end

  def require_login
    redirect_to ‘/’ unless session.include? :user_id
  end
end
