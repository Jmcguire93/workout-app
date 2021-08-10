class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest, :created_at, :updated_at

  has_many :workouts 
end
