class RemoveRoomNameFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :room_name
    add_column :bookings, :room_id, :integer
  end
end
