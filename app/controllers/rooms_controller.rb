class RoomsController < ApplicationController

  layout :resolve_layout

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])

    # datetime_now = Time.now
    datetime_now = Time.new(2020, 01, 02, 7, 35, 0)
    @date_now = datetime_now.strftime("%A, %B %-d")
    @time_now = datetime_now.strftime("%-H:%M")

    @bookings = @room.bookings.order('start').where(start: datetime_now.all_day)
    booking_ids_ordered = @room.bookings.order('start').where(start: datetime_now.all_day).ids

  end

  private
  def resolve_layout
    case action_name
    when "show"
      "room"
    else
      "dashboard"
    end
  end

end
