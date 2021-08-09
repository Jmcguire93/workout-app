class ExercisesController < ApplicationController
  
  def index
    exercises = Exercise.all
    render json: exercises.as_json
  end

  def show
    exercise_id = params["id"]
    exercise = Exercise.find(exercise_id)
    render json: exercise
  end
  
  # #Testing actions, we don't want users to manipulate the exercise database.
  # def create
  #   exercise = Exercise.new(
  #     name: params["name"],
  #     muscle_group: params["muscle_group"],
  #     instructions: params["instructions"],
  #     image: params["image"],
  #   )
  #   if exercise.save
  #     render json: exercise.as_json
  #   else 
  #     render json: {errors: exercise.errors.full_messages}, 
  #     status: 422
  #   end
  # end

  # def destroy
  #   exercise_id = params[:id]
  #   exercise = Exercise.find_by(id: exercise_id)
  #   exercise.destroy
  #   render json: {message: "Exercise successfully destroyed!"}    
  # end
end
