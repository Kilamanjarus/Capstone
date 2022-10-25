class ChangeCommentIdToUserWorkoutCommentId < ActiveRecord::Migration[7.0]
  def change
    rename_column :user_workout_comment_likes, :comment_id, :user_workout_comment_id
  end
end
