class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end
  # def create
  #     @space = Space.new(params[:space])
  #     if @space.save
  #       redirect_to space_path(@space)
  #     else
  #       render :new
  #     end
  #   end

end
