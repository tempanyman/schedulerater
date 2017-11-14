class RenameClassIdToCourseId < ActiveRecord::Migration[5.1]
  def change
  	rename_column :class_reviews, :class_id, :course_id
  end
end
