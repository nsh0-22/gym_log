class Workout < ApplicationRecord
  belongs_to :exercise
  belongs_to :user
  
  validates :exercise_id, {presence: true}
  validates :weight, {presence: true}
  validates :reps, {presence: true}
  validates :sets, {presence: true}
  validates :date, {presence: true}
end
