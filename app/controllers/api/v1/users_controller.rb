class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

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
				render json: { error: 'Failed to create user' }, status: :not_acceptable
			end
		
		else
			render json: { error: 'Admin account already exists' }, status: :not_acceptable
		end

		
	end

	private

	def user_params
		params.require(:user).permit(:username, :password)
	end
end
