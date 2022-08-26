class ChangeTypeinExercisesToStyle < ActiveRecord::Migration[7.0]
  def change
    rename_column :exercises, :type, :style
  end
end
