class CreateExercices < ActiveRecord::Migration[5.2]
  def change
    create_table :exercices do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.string :video

      t.timestamps
    end
  end
end
