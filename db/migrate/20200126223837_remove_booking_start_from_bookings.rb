class RemoveBookingStartFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :booking_start
    remove_column :bookings, :booking_end
    add_column :bookings, :start, :datetime
    add_column :bookings, :end, :datetime
  end
end
