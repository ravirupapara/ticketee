class UsersController < ApplicationController

	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def index
		@user = User.new
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:notice] = "You have signed up successfully."
			redirect_to @user
		else
			render :new
		end
  	end

	def edit
		@user = User.find(params[:id])
	end

	def update

		if @user.save(user_params)
			flash[:notice] = "Profile has been updated."
			redirect_to @user
		else
			flash[:notice] = "Profile failed to update"
			render :edit
		end

	end

	def show
		@user = User.find(params[:id])
	end

	private
		def user_params
			params.require(:user).permit(:name,:password,:password_confirmation)
		end

		def set_user
			@user = User.find(params[:id])
		end

end
