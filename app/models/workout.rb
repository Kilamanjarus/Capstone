class Workout < ApplicationRecord
  has_many :routines
  belongs_to :user, required: false
  has_many :exercises, through: :routines
end
