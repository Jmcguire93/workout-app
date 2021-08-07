class WorkoutExerciseSerializer < ActiveModel::Serializer
  attributes :id, :workout_id, :exercise_id, :sets, :reps, :weight, :notes

  belongs_to :exercise
  belongs_to :workout
end
