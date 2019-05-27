class ReservationsController < ApplicationController

  def new
    skip_authorization
    @reservation = Reservation.find(params[:id])
    @space = @reservation.space
    dates = @reservation.period
    dates = dates.split("to")
    clean_dates = []
    dates.each { |date| clean_dates << date.delete(" ") }
    @price = @reservation.number_worker * 5 * @space.price
  end

  def create
    @reservation = Reservation.new
    @reservation.space = Space.find(params[:space_id])
    @reservation.save
    redirect_to space_path(@space)
    skip_authorization
  end

  private

  def reservation_params
    params.require(:reservation).permit(:period, :total_price, :user_id, :space_id, :number_worker)
  end

  def set_space
    @space = Space.find(params[:space_id])
  end
end
