class ClassReview < ApplicationRecord
  belongs_to :schedule_review
  belongs_to :user
  belongs_to :course
  serialize :prereqs, Array
end
