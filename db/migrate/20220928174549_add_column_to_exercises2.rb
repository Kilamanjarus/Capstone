class AddColumnToExercises2 < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :gifUrl, :string
  end
end
