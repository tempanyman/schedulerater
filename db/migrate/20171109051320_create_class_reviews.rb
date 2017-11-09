class CreateClassReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :class_reviews do |t|
      t.float :difficulty
      t.integer :workload
      t.string :professor
      t.integer :class_id
      t.integer :user_id
      t.integer :schedulereview_id

      t.timestamps
    end
  end
end
