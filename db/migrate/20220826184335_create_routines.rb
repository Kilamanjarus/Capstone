class CreateRoutines < ActiveRecord::Migration[7.0]
  def change
    create_table :routines do |t|
      t.string :title

      t.timestamps
    end
  end
end
