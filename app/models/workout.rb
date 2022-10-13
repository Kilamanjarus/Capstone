class Workout < ApplicationRecord
  belongs_to :user

  has_many :routines
  has_many :user_votes
  has_many :user_favorite_workouts
  has_many :exercises, through: :routines

  validates :title, presence: true
end
