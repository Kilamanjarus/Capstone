class RoutineSet < ApplicationRecord
  belongs_to :routine, required: false
  belongs_to :user
  belongs_to :exercise
end
