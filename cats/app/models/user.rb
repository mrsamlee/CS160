class User < ActiveRecord::Base

	def new_user
		@user = User.new
	end
	
	def signup
		@user = User.new(user_param)
   		respond_to do |format|
    		if @user.save
        		format.html { redirect_to @cats, notice: 'User was successfully created.' }
        		format.json { render :show, status: :created, location: @cats }
     		else
        		format.html { render :new }
        		format.json { render json: @cats.errors, status: :unprocessable_entity }
    		end
    	end
	end

	private
	def user_param
		params.require(:user).permit(:name, :pass)
	end
end
