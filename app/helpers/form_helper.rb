module FormHelper
  def setup_schedule_review(sched_review)
    # sched_review.class_review ||= ClassReview.new
    5.times {sched_review.class_reviews.build}
    sched_review
  end
end