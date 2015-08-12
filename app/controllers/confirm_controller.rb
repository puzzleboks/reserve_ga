class ConfirmController < ApplicationController

  def create
    @reservation = Reservation.create!(reservation_params)
    redirect_to confirm_path

  end

  def show
    @reservation = Reservation.find(params[:reservation_id])
    @room = @reservation.room
  end

  private
  def reservation_params
    params.require(:reservation).permit(:reservation_date)
  end

end
