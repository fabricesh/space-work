class SpacesController < ApplicationController
  def index
    # @spaces = Space.all
    @spaces = policy_scope(Space)
  end

  def show
    @space = Space.find(params[:id])
    @reservation = Reservation.new
    # @space = Space.where.not(latitude: nil, longitude: nil)
    @marker = [{ lat: @space.latitude, lng: @space.longitude }]
    skip_authorization
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

  def offline
  end

  #creation of a new space with capacity, space_type and localisation
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

  #saving of the new space
  def create_space
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      redirect_to add_photos_path(@space)
    else
      render :new
    end
  end

  # adding photos to the new space
  def photos
    @space = Space.find(params[:id])
  end

  # saving the photos
  def update_photos
    @space = Space.find(params[:id])
    @space.update(space_params)
    if @space.save
      redirect_to add_description_path(@space)
    else
      render :photos
    end
  end

  # adding title and description to the new space
  def description
    @space = Space.find(params[:id])
  end

  # saving of the title and the description
  def update_description
    @space = Space.find(params[:id])
    @space.update(space_params)
    if @space.save
      redirect_to add_parameters_path(@space)
    else
      render :description
    end
  end

  # adding availabilities and price
  def parameters
    @space = Space.find(params[:id])
  end

  # saving availabilities and price
  def update_parameters
    @space = Space.find(params[:id])
    @space.update(space_params)
    if @space.save
      redirect_to root_path
    else
      render :parameters
    end
    authorize @space
  end

  private

  def space_params
    params.require(:space).permit(:title, :localisation, :availabilities, :description, :price, :space_type, :capacity, :photo)
  end
end
