class Routine < ApplicationRecord
  has_many :workout_exercises
  # belongs_to :user
  has_many :exercises, through: :workout_exercises
end
