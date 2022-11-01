class RemoveIntegerColumnFromRoutineSets < ActiveRecord::Migration[7.0]
  def change
    remove_column :routine_sets, :integer
  end
end
