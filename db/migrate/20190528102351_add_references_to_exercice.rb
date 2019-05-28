class AddReferencesToExercice < ActiveRecord::Migration[5.2]
  def change
    add_reference :exercices, :mood, foreign_key: true
  end
end
