class WorkoutExercisesController < ApplicationController
  # before_action :authenticate_user, except: [:index, :show]

  def index
    workout_exercises = WorkoutExercise.all
    render json: workout_exercises
  end

  def show
    workout_exercise_id = params["id"]
    workout_exercise = WorkoutExercise.find(workout_exercise_id)
    render json: workout_exercise
  end

  def create
    workout_exercise = WorkoutExercise.new(
      workout_id: params["workout_id"],
      exercise_id: params["exercise_id"],
      sets: params["sets"],
      reps: params["reps"],
      weight: params["weight"],
      notes: params["notes"],
    )
    if workout_exercise.save
      render json: workout_exercise
    else 
      render json: {errors: workout_exercise.errors.full_messages}, 
      status: 422
    end
  end

  def update
    workout_exercise_id = params[:id]
    workout_exercise = WorkoutExercise.find_by(id: workout_exercise_id)

    # workout_exercise.workout_id = params["workout_id"] || workout_exercise.workout_id
    # workout_exercise.exercise_id = params["exercise_id"] || workout_exercise.exercise_id
    workout_exercise.sets = params["sets"] || workout_exercise.sets
    workout_exercise.reps = params["reps"] || workout_exercise.reps
    workout_exercise.weight = params["weight"] || workout_exercise.weight
    workout_exercise.notes = params["notes"] || workout_exercise.notes

    if workout_exercise.save
      render json: workout_exercise
    else
      render json: {errors: workout_exercise.errors.full_messages}, 
      status: 422
    end
  end

  def destroy
    workout_exercise_id = params[:id]
    workout_exercise = WorkoutExercise.find_by(id: workout_exercise_id)
    
    if workout_exercise.destroy
      render json: { message: "Workout_exercise successfully destroyed!" }
    else
      render json: { errors: workout_exercise.errors.full_messages },
      status: :unprocessable_entity   
    end
  end
end
