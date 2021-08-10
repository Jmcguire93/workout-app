class ExercisesController < ApplicationController
  
  def index
    exercises = Exercise.all
    render json: exercises
  end

  def show
    exercise_id = params["id"]
    exercise = Exercise.find(exercise_id)
    render json: exercise
  end
  
#   #Testing actions, we don't want users to manipulate the exercise database.
#   def create
#     exercise = Exercise.new(
#       name: params["name"],
#       muscle_group: params["muscle_group"],
#       instructions: params["instructions"],
#       image: params["image"],
#     )
#     if exercise.save
#       render json: exercise.as_json
#     else 
#       render json: {errors: exercise.errors.full_messages}, 
#       status: 422
#     end
#   end

#   def update
#     exercise_id = params[:id]
#     exercise = Exercise.find_by(id: exercise_id)

#     exercise.name = params["name"] || exercise.name
#     exercise.muscle_group = params["muscle_group"] || exercise.muscle_group
#     exercise.instructions = params["instructions"] || exercise.instructions
#     exercise.image = params["image"] || exercise.image

#     if exercise.save
#       render json: exercise.as_json
#     else
#       render json: {errors: exercise.errors.full_messages}, 
#       status: 422
#     end
#   end

#   def destroy
#     exercise_id = params[:id]
#     exercise = Exercise.find_by(id: exercise_id)
#     exercise.destroy
#     render json: {message: "Exercise successfully destroyed!"}    
#   end
end
