class ScheduleReview < ApplicationRecord
  belongs_to :user
  has_many :class_reviews
  has_many :courses, through: :class_reviews
  accepts_nested_attributes_for :class_reviews,
                                :allow_destroy => true,
                                :reject_if => lambda { |course| course[:name].blank? }
  validates :difficulty, presence: true
  validates :review, presence: true
end
