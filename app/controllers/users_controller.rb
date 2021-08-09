class UsersController < ApplicationController

  def index 
    users = User.all 
    render json: users.as_json
  end

  def show
    user_id = params[:id]
    user = User.find(user_id)
    render json: user.as_json
  end

  def create
    user = User.new(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
