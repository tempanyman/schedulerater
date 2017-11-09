class ClassReview < ApplicationRecord
  belongs_to :ScheduleReview, :User, :Class
end
