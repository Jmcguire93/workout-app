class WorkoutsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    workouts = Workout.order(created_at: :desc)
    render json: workouts
  end

  def user_index
    workouts = Workout.where(user_id: current_user.id)
    render json: workouts
  end

  def show
    workout_id = params["id"]
    workout = Workout.find(workout_id)
    render json: workout
  end

  def create
    workout = Workout.new(
      name: params["name"],
      description: params["description"],
      user_id: current_user.id,
    )
    if workout.save
      render json: workout
    else 
      render json: {errors: workout.errors.full_messages}, 
      status: 422
    end
  end

  def update
    workout_id = params[:id]
    workout = Workout.find_by(id: workout_id)

    workout.name = params["name"] || workout.name
    workout.description = params["description"] || workout.description
    workout.user_id = params["user_id"] || workout.user_id

    if workout.save
      render json: workout
    else
      render json: {errors: workout.errors.full_messages}, 
      status: 422
    end
  end

  def destroy
    workout_id = params[:id]
    workout = Workout.find_by(id: workout_id)

    if workout.destroy
      render json: {message: "Workout successfully destroyed!"}
    else
      render json: {errors: workout.errors.full_messages}, 
      status: 422
    end
  end
end

