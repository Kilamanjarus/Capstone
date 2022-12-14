class Routine < ApplicationRecord
  belongs_to :exercise
  belongs_to :workout, required: false
  belongs_to :user

  has_many :routine_sets
end
