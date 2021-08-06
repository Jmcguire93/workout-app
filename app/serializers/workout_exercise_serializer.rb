class WorkoutExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :user_id
end
