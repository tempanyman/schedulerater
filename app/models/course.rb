class Course < ApplicationRecord
  has_many :class_reviews, dependent: destroy
  has_many :schedule_reviews, dependent: destroy
  belongs_to :department
end
