class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :ensure_current_user, except: [:index, :show]
  helper_method :current_user

  def current_user
    user = USer.find_by(id: session[:user_id]) if session[:user_id]
  end

  private

  def ensure_current_user
    redirect_to new_session_path unless current_user
  end

end
