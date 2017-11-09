class ScheduleReview < ApplicationRecord
  belongs_to :user
  has_many :class_reviews, :classes
end
