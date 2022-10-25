class UserWorkoutCommentLike < ApplicationRecord
  belongs_to :user
  belongs_to :user_workout_comment
end
