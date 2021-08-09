class WorkoutsController < ApplicationController
  # before_action :authenticate_user, except: [:index, :show]

  def index
    workouts = Workout.all
    render json: workouts.as_json
  end

  def show
    workout_id = params["id"]
    workout = Workout.find(workout_id)
    render json: workout.as_json
  end

  def create
    workout = Workout.new(
      name: params["name"],
      description: params["description"],
      user_id: params["user_id"],
    )
    if workout.save
      render json: workout.as_json
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

    if workout.save
      render json: workout.as_json
    else
      render json: {errors: workout.errors.full_messages}, 
      status: 422
    end
  end

  def destroy
    workout_id = params[:id]
    workout = Workout.find_by(id: workout_id)
    workout.destroy
    render json: {message: "Workout successfully destroyed!"}    
  end
end

