class FixClassReviewColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :class_reviews, :schedulereview_id, :schedule_review_id
  end
end
