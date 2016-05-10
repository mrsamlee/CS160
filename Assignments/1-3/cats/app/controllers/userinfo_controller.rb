class UserinfoController < ApplicationController
	def new
		@user = User.new(user_param)
	end

	def index
		@users = User.all
	end
	
	private
	def user_param
		params.require(:user).permit(:name, :pass)
	end
end
