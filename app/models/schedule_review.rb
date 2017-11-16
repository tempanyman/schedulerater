class ScheduleReview < ApplicationRecord
  belongs_to :user
  has_many :class_reviews
  has_many :courses, through: :class_reviews
  validates :difficulty, presence: true
  validates :review, presence: true
end
