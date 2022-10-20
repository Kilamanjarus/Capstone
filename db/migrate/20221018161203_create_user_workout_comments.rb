class CreateUserWorkoutComments < ActiveRecord::Migration[7.0]
  def change
    create_table :user_workout_comments do |t|
      t.integer :workout_id
      t.integer :user_id
      t.text :comment

      t.timestamps
    end
  end
end
