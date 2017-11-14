class AddPrereqsToClassReviews < ActiveRecord::Migration[5.1]
  def change
  	add_column :class_reviews, :prereqs, :string
  end
end
