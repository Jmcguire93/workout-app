class User < ApplicationRecord
  has_secure_password
  validates :username, length: {maximum: 20}
  validates :username, presence: true, uniqueness: true 
  validates :password, length: {in: 6..20}  
  validates :email, presence: true, uniqueness: true

  has_many :workouts 
  # has_many :reviews
end
