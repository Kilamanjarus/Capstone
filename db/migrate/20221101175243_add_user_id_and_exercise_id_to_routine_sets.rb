class AddUserIdAndExerciseIdToRoutineSets < ActiveRecord::Migration[7.0]
  def change
    add_column :routine_sets, :user_id, :integer
    add_column :routine_sets, :exercise_id, :integer
  end
end
