class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.integer :phone
      t.time :date_time

      t.timestamps
    end
  end
end
