class UsersController < ApplicationController
	
	def index
		
	end

	def new
		@user = User.new #create new object user
	end

	def show

	end

	def create
		@user = User.new(params[:user])
		if @user.save
		#Do something
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
