class AddReferencesToexercise < ActiveRecord::Migration[5.2]
  def change
    add_reference :exercises, :mood, foreign_key: true
  end
end
