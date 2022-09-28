class User < ApplicationRecord
  has_many :workouts
  has_many :routines
  has_and_belongs_to_many :equipments

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
