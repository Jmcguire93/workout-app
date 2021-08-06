class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :desription, :user_id
  
  belongs_to :user 
  has_many :workout_exercises 
  has_many :exercises, through: :workout_exercises
  # has_many :reviews 
end
