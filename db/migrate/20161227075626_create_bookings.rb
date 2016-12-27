class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :conference_room, foreign_key: true
      t.string :comment
      t.datetime :start_date_time
      t.datetime :end_date_time

      t.timestamps
    end
  end
end
