class CreateScheduleReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :schedule_reviews do |t|
      t.integer :user_id
      t.float :difficulty
      t.text :review

      t.timestamps
    end
  end
end
