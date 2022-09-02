class WorkoutExercise < ApplicationRecord
  belongs_to :exercise
  # belongs_to :routine, validate: false
  # belongs_to :user
end
