class DetailsController < ApplicationController

  def new
    @reservation = Reservation.new
    @room = @reservation.room
    @reservation_date = @reservation.reservation_date
    @num_guests = @reservation.num_guests
    @num_tables = @reservation.num_tables
    @num_chairs = @reservation.num_chairs
    @num_adapters = @reservation.num_adapters
    @num_whiteboards = @reservation.num_whiteboards
    @has_alcohol = @reservation.has_alcohol

  end

  def confirm
    fail params.inspect
  end

end
