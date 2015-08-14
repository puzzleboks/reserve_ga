class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
    @reservation_date = @reservation.reservation_date
    @num_guests = @reservation.num_guests
    @num_tables = @reservation.num_tables
    @num_chairs = @reservation.num_chairs
    @num_adapters = @reservation.num_adapters
    @num_whiteboards = @reservation.num_whiteboards
    @has_alcohol = @reservation.has_alcohol
  end

  def create
    @reservation = Reservation.create!(reservation_params)
    # if (@num_guests <= 50)
    #   @reservation.room = classroom1
    # elsif 50 < @num_guests <= 60
    #   @reservation.room = classroom4
    # elsif 60 < @num_guests <= 70
    #   @reservation.room = classroom2
    # end
    redirect_to @reservation
  end

  def confirm
    @reservation = Reservation.find(params[:id])
  end


  def show
    @reservation = Reservation.find(params[:id])
    @room = @reservation.room
  end

  private
  def reservation_params
    params.require(:reservation).permit(:reservation_date, :num_guests, :num_tables, :num_chairs, :num_adapters, :num_whiteboards, :has_alcohol)
  end



end
