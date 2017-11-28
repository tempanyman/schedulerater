class ClassReview < ApplicationRecord
  belongs_to :schedule_review
  belongs_to :user
  belongs_to :course
  accepts_nested_attributes_for :course
  serialize :prereqs, Array
end
