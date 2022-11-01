class Exercise < ApplicationRecord
  has_many :routines
  has_many :routine_sets
end
