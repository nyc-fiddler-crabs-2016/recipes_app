class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :ensure_current_user, except: [:index, :show]
  helper_method :current_user
  helper_method :logged_in?
  helper_method :owned?
  helper_method :authorize_access
  helper_method :prevent_tampering
  helper_method :build_custom_id
  helper_method :comment_source_path
  # Can I put all these helper methods on one line separated by commas?

  def logged_in?
    !!current_user
  end

  def current_user
    User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def owned?(object)
    logged_in? && current_user.id == object.user_id
  end

  def authorize_access(object)
    halt 403, "you are not authorized to perform this operation" unless owned?(object)
  end

  def proved_self
    logged_in? && session[:user_id] == @user.id
  end

  def prevent_tampering
    halt 403, "you are not authorized to perform this operation" unless proved_self
  end

  def build_custom_id(object, direction)
    id = "#{object.class}-" + "#{object.id}-" + direction + "vote-link"
  end
  def comment_source_path(comment)
    if comment.commentable_type == "Answer"
      question_path(comment.source.question)
    else
      question_path(comment.source)
    end
  end

  private
  
  def ensure_current_user
    redirect_to new_session_path unless current_user
  end
end