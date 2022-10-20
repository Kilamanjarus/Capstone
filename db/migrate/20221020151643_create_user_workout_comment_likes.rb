class CreateUserWorkoutCommentLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :user_workout_comment_likes do |t|
      t.integer :user_id
      t.integer :comment_id
      t.string :status

      t.timestamps
    end
  end
end
