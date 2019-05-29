class ChangeFinalMoodByRating < ActiveRecord::Migration[5.2]
  def change
    rename_column :achievements, :final_mood_id, :rating
    change_column :achievements, :rating, :integer
  end
end
