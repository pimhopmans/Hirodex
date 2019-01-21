require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder

	
	helper_method :current_user 

	def current_user 
	    @current_user ||= User.find(session[:user_id]) if session[:user_id] 
	end

	def require_login
		unless current_user
			flash[:error] = "You must be logged in to access this section!"
		  	redirect_to '/login' 
		end
	end

	def require_logout
		unless !current_user
			flash[:error] = "You can't access this section if you're logged in!"
			redirect_to '/'
		end
	end

end
