class DoneController < ApplicationController

  def show
    @reservation = Reservation.find(params[:reservation_id])
    @room = @reservation.room.find(params[:room_id])
  end

end
