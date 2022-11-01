class RemoveSetsRepsWeightFromRoutines < ActiveRecord::Migration[7.0]
  def change
    remove_column :routines, :sets, :integer
    remove_column :routines, :reps, :integer
    remove_column :routines, :added_weight, :integer
  end
end
