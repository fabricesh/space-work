class ReservationsController < ApplicationController
  def preview
    skip_authorization
    @reservation = Reservation.new(reservation_params)
    @space = Space.find(params[:space_id])
    dates = @reservation.period
    dates = dates.split("to")
    clean_dates = []
    dates.each { |date| clean_dates << date.delete(" ") }
    @price = @reservation.number_worker * 5 * @space.price
  end

  def create
    skip_authorization
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @space = Space.find(reservation_params[:space_id])
    @reservation.space = @space
    if @reservation.save
      redirect_to space_path(@space)
      raise
    else
      raise
    end
  end

  def mes_demandes
    skip_authorization
    @reservations = current_user.reservations
  end


  private

  def reservation_params
    params.require(:reservation).permit(:period, :total_price, :user_id, :space_id, :number_worker)
  end

  def set_space
    @space = Space.find(params[:space_id])
  end
end
