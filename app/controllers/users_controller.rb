class UsersController < ApplicationController

	def index #first index to show
		@users = User.all
	end

	def new
		@user = User.new #create new user
	end

	def show #show for user
		@user = User.find(params[:id])
	end

	def create # to create something
		@user = User.new(params[:user])  #create user
		if @user.save #if cansave
			redirect_to @user
		else
			render 'new' #if can't save show new
		end
	end

	def edit # for edit something
  		@user = User.find(params[:id])
	end

	def update # for update something
		@user = User.find(params[:id])
		    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
	end

	def destroy # for destroy something

	end

end