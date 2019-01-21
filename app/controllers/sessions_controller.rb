class SessionsController < ApplicationController
	before_action :require_logout, only: [:new, :create]
	
	def new
	end

	def create
		@user = User.find_by(username: params[:session][:username])

		if @user && @user.authenticate(params[:session][:password])
		    session[:user_id] = @user.id
		    redirect_to '/'
		else
		    redirect_to '/login'
		end
	end

	def destroy 
	  session[:user_id] = nil 
	  redirect_to '/' 
	end

end
