class UsersController < ApplicationController

  def index 
    users = User.all 
    render json: users
  end

  def show
    user_id = params[:id]
    user = User.find(user_id)
    render json: user
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

  # Used destroy action to test User validations

  def destroy
    user_id = params[:id]
    user_id = User.find_by(id: user_id)
    
    if user_id.destroy
      render json: { message: "User successfully destroyed!" }
    else
      render json: { errors: user_id.errors.full_messages },
      status: :unprocessable_entity   
    end
  end
end
