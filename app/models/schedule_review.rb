class ScheduleReview < ApplicationRecord
  belongs_to :user
  has_many :class_reviews
  has_many :classes
  accepts_nested_attributes_for :class_reviews
  validates :difficulty, presence: true
  validates :review, presence: true
end
