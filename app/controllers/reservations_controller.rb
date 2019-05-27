class ReservationsController < ApplicationController
  before_action :set_space
  def new
    @space = Space.find(params[:space_id])
    @reservation = Reservation.new
    skip_authorization
  end

  def create
    @reservation = Reservation.new
    @reservation.space = Space.find(params[:space_id])
    @reservation.save
    redirect_to space_path(@space)
    skip_authorization
  end

  private

  def set_space
    @space = Space.find(params[:space_id])
  end
end
