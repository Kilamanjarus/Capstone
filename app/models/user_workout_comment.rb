class UserWorkoutComment < ApplicationRecord
  belongs_to :user
  belongs_to :workout
  has_many :user_workout_comment_likes
end
