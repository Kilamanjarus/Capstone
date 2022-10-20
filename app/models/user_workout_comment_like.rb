class UserWorkoutCommentLike < ApplicationRecord
  belongs_to :user
  belongs_to :UserWorkoutComment
end
