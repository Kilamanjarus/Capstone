class RenameBodypartToBodyPart < ActiveRecord::Migration[7.0]
  def change
    rename_column :exercises, :bodypart, :bodyPart
  end
end
