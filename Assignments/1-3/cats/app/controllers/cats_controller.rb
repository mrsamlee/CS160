class CatsController < ApplicationController

	def new
		@user = User.new(user_param)
	end

	def index
		@cats = Cat.all
	end

	def create
		@user = User.new(user_param)

   		respond_to do |format|
    		if @user.save
        		format.html { redirect_to :cats, notice: 'User was successfully created.' }
        		format.json { render :show, status: :created, location: :cats }
     		else
        		format.html { render :new }
        		format.json { render json: :cats.errors, status: :unprocessable_entity }
    		end
    	end
	end

	def view
		format.html { redirect_to :users, notice: 'View Users' }
		format.json { render :show, status: :created, location: :users}
	end

	private
	def user_param
		params.require(:user).permit(:name, :pass)
	end
end
