class Exercise < ApplicationRecord
  belongs_to :category
  has_many :workouts
end
