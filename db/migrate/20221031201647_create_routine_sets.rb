class CreateRoutineSets < ActiveRecord::Migration[7.0]
  def change
    create_table :routine_sets do |t|
      t.integer :routine_id
      t.integer :sets
      t.string :reps
      t.string :integer
      t.integer :added_weight

      t.timestamps
    end

  end
end
