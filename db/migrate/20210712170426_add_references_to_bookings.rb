class AddReferencesToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :restaurante, null: false, foreign_key: true
  end
end
