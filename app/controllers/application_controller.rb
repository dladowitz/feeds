class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :go_to_user_feed

  def go_to_user_feed
    unless request.fullpath == "/users/3/feed"
      redirect_to "/users/3/feed"
    end
  end
end
