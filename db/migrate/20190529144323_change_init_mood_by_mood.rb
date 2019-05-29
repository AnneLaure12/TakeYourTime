class ChangeInitMoodByMood < ActiveRecord::Migration[5.2]
  def change
    remove_column :achievements, :init_mood_id
    add_reference :achievements, :mood
  end
end
