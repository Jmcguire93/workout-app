class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :user_id
  
  belongs_to :user 
  has_many :workout_exercises 
  has_many :exercises, through: :workout_exercises
  # has_many :reviews 
end