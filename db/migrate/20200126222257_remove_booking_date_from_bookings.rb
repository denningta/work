class RemoveBookingDateFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :booking_date
    add_column :bookings, :booking_start, :datetime
    add_column :bookings, :booking_end, :datetime
  end
end
