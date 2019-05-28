class AddExerciceReferenceToAchievements < ActiveRecord::Migration[5.2]
  def change
    add_reference :achievements, :exercice, foreign_key: true
  end
end
