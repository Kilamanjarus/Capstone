class CreateUserFavoriteWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :user_favorite_workouts do |t|
      t.integer :workout_id
      t.integer :user_id
      t.timestamps
    end
  end
end
