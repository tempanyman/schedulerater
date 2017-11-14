class ClassReview < ApplicationRecord
  belongs_to :ScheduleReview, :User, :Course
  serialize :prereqs, Array
end
