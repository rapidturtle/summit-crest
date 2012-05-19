class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authenticate_if_staging
  
private

  def authenticate!
    unless current_user
      store_location
      redirect_to sign_in_path
    end
  end
  helper_method :authenticate!

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def store_location
    session[:return_to] = request.fullpath
  end
  
  def authenticate_if_staging
    if request.domain == "rapidturtle.com"
      authenticate_or_request_with_http_basic do |name, password|
        name == 'twincrest' && password == 'twincrest'
      end
    end
  end
end
