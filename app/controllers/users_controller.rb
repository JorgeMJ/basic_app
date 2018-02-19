class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end	

	def create
		@user = User.new(params_user)
		@user.save

		redirect_to @user
	end

	def edit
	end

	def update
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
	end 

	private

	def params_user
		params.require(:user).permit(:username, :email, :first_name, :last_name)
	end
end
