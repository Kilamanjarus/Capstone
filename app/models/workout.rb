class Workout < ApplicationRecord
  has_many :routines
  belongs_to :user
  has_many :exercises, through: :routines
  validates :title, presence: true
end
