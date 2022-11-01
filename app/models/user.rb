class User < ApplicationRecord
  has_many :workouts
  has_many :routines
  has_many :routine_sets
  has_many :user_equipments
  has_many :equipments, through: :user_equipments
  has_many :user_votes
  has_many :user_favorite_workouts
  has_many :user_workout_comments
  has_many :user_workout_comment_likes

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
