class UsersController < ApplicationController
	before_action :require_logout, only: [:new, :create]

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to '/'
		else
			redirect_to '/signup'
		end
	end

	private
		def user_params
			params.require(:user).permit(:username, :password)
		end

end
