class ClassReview < ApplicationRecord
  belongs_to :ScheduleReview, :User, :Course
end
