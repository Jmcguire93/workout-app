class Workout < ApplicationRecord
  belongs_to :user 
  # has_many :reviews 
  has_many :workout_exercises 
  has_many :exercises, through: :workout_exercises
end
