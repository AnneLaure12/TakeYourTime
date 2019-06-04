class CreateClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :classes do |t|
      t.string :name
      t.string :address
      t.text :description
      t.date :start_at

      t.timestamps
    end
  end
end
