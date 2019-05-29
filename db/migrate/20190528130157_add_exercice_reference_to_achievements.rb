class AddexerciseReferenceToAchievements < ActiveRecord::Migration[5.2]
  def change
    add_reference :achievements, :exercise, foreign_key: true
  end
end
