class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :muscle_group, :instructions, :image
end
