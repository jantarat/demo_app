class UsersController < ApplicationController
	
	def index
		
	end

	def new
		@user = User.new #create new object user
	end

	def show
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(params[:user])
		if @user.save
		#Do something
		redirect_to @user
		else
			render 'new'
		end	
	end

	def edit

	end

	def update

	end

	def destroy

	end
end
