class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :update, :index]

	def profile
		render json: {user: UserSerializer.new(current_user)}, status: :accepted
	end

	def index
		@users = User.all
		render json: @users
	end

	def show
		@user = User.find(params[:id])
		render json: @user
	end

	def create
		if User.count < 1
			@user = User.create(user_params)
			if @user.valid? && User.count == 1
				@token = encode_token({user_id: @user.id})
				render json: { user: UserSerializer.new(@user), jwt: @token},
				status: :created
			else
				render json: { error: 'Failed to create user.' }, status: :not_acceptable
			end
		
		else
			render json: { error: 'Only one admin account allowed.' }, status: :not_acceptable
		end
		
	end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)
		render json: @user
	end

	private

	def user_params
		params.require(:user).permit(:username, :password, :pic)
	end
end
