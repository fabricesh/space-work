class SpacesController < ApplicationController
  def index
    # @spaces = Space.all
    @spaces = policy_scope(Space)
  end

  def new
    @space = Space.new
    @space_types = ["Local entier", "Espace privé", "Espace partagé"]
    @workers_number = ["pour 1 collaborateur"]

    20.times do |i|
      @workers_number << "pour #{i + 1} collaborateurs"
    end
    @workers_number.delete_at(1)
    @workers_number.delete_at(2)
    authorize @space
  end

  def show
    @space = Space.find(params[:id])
    authorize @space
    @reservation = Reservation.new
  end

  def create
    @space = Space.new(params[:space])
    if @space.save
      redirect_to space_path(@space)
    else
      render :new
    end
    authorize @space
  end

  def edit
    @space = Space.find(params[:id])
    authorize @space
  end

  def update
    @space = Space.find(params[:id])
    authorize @space
    if @space.update(space_params)
      redirect_to space_path(@space)
    else
      render :edit
    end
  end

  def destroy
    @space = Space.find(params[:id])
    @space.destroy
  end

  def photos
    @space = Space.new(space_params)
  end

  def description
    @space = Space.new(params[:space])
  end

  def title
    @space = Space.new(params[:space])
  end

  def offline

  end

  private

  def space_params
    params.require(:space).permit(:title, :localisation, :availabilities, :price, :space_type, :capacity, :photo)
  end
end
