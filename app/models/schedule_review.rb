class ScheduleReview < ApplicationRecord
  belongs_to :user
  has_many :class_reviews, :classes
  validates :difficulty, presence: true
  validates :review, presence: true
end
