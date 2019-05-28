class AddReferencesToAchievements < ActiveRecord::Migration[5.2]
  def change
    add_reference :achievements, :init_mood
    add_reference :achievements, :final_mood
  end
end
