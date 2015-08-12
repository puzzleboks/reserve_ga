class ConfirmController < ApplicationController

  def create
    @reservation = Reservation.create!(reservation_params)

  end

  def show
    @reservation = Reservation.find(params[:reservation_id])
    @room = @reservation.room.find(params[:room_id])
  end

  private
  def reservation_params
    params.require(:reservation).permit(:reservation_date)
  end

end
