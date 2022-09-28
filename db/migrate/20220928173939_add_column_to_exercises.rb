class AddColumnToExercises < ActiveRecord::Migration[7.0]
  def change
    add_column :equipment, :exercise, :string
  end
end
