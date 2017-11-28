class ClassReview < ApplicationRecord
  belongs_to :ScheduleReview, :User, :Course
  accepts_nested_attributes_for :courses
  serialize :prereqs, Array
end
