class User < ApplicationRecord
  has_many :workouts
  has_many :routines
  has_many :user_equipments
  has_many :equipments, through: :user_equipments
  has_many :user_votes

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
