class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :users, foreign_key: true
      t.references :classes, foreign_key: true

      t.timestamps
    end
  end
end