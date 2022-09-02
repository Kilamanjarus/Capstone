class Change < ActiveRecord::Migration[7.0]
  def change
    rename_table :routines, :workouts
    rename_table :workout_exercises, :routines
  end
end
