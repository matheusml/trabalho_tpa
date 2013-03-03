class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
	before_filter :ensure_user_is_authenticated

	def ensure_user_is_authenticated
		if params["controller"] != "sessions" and !current_user
			redirect_to root_url 
		end
	end

	private

	def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
end
