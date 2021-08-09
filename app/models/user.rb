class User < ApplicationRecord
  has_secure_password
  validates :name, length: {maximum: 20}
  validates :password, length: {in: 6..20}  
  validates :email, presence: true, uniqueness: true

  has_many :workouts 
  # has_many :reviews
end
