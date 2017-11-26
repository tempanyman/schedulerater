class ChangeDifficultyToInteger < ActiveRecord::Migration[5.1]
  def change
  	change_column :class_reviews, :difficulty, :integer
  end
end
