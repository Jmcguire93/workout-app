class CreateWorkoutExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :workout_exercises do |t|
      t.integer :sets
      t.integer :reps
      t.integer :weight
      t.string :notes
      t.integer :workout_id
      t.integer :exercise_id

      t.timestamps
    end
  end
end
