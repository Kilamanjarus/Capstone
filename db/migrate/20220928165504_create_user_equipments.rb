class CreateUserEquipments < ActiveRecord::Migration[7.0]
  def change
    create_table :user_equipments do |t|
      t.integer :user_id
      t.integer :equipment_id

      t.timestamps
    end
  end
end
