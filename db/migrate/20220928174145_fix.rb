class Fix < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :equipment, :string
    remove_column :equipment, :exercise
  end
end
