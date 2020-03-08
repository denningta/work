class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room
  extend OrderAsSpecified
end
