class Workout < ApplicationRecord
  belongs_to :user

  has_many :routines
  has_many :user_votes
  has_many :user_favorite_workouts
  has_many :exercises, through: :routines
  has_many :user_workout_comments

  validates :title, presence: true
end
