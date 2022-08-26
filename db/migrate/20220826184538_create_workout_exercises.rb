class CreateWorkoutExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_exercises do |t|
      t.integer :exercise_id
      t.integer :workout_id
      t.integer :added_weight
      t.integer :reps
      t.integer :sets
      t.string :status

      t.timestamps
    end
  end
end
