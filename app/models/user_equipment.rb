class UserEquipment < ApplicationRecord
  belongs_to :user
  belongs_to :equipment
  validates_uniqueness_of :user_id && :equipment_id
end
