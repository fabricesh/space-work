class SpacesController < ApplicationController
  def index
    # @spaces = Space.all
    # Search with Algolia
    if params[:query].present?
      @spaces = policy_scope(Space).search(params[:query])
    else
      @spaces = policy_scope(Space)
    end
    skip_authorization
  end

  def show
    @space = Space.find(params[:id])
    @reservation = Reservation.new
    @marker = [{ lat: @space.latitude, lng: @space.longitude }]
    skip_authorization
    @dates = @space.availabilities.split(", ").map { |date| date.gsub("/", "-") }
  end

  def create_reservation
    skip_authorization
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.space = Space.find(params[:id])
    if @reservation.save
      redirect_to dashboard_path(@reservation)
      flash[:notice] = "Votre demande de réservation est en attente de validation !"
    else
      render :new
    end
  end

  def edit
    @space = Space.find(params[:id])
    authorize @space
    @dates = @space.availabilities.split(", ").map { |date| date.gsub("/", "-") }
  end

  def update
    @space = Space.find(params[:id])
    authorize @space
    if @space.update(space_params)
      redirect_to dashboard_path
      flash[:notice] = "Votre Space-Work est à jour !"
    else
      render :edit
    end
  end

  def destroy
   @space = Space.find(params[:id])
   @space.destroy
    authorize @space
      respond_to do |format|
        format.html { redirect_to dashboard_path }
        format.js
      end
    flash[:notice] = "Votre Space-Work à été supprimé"

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
    authorize @space
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
    authorize @space
  end

  # saving the photos
  def update_photos
    @space = Space.find(params[:id])
    authorize @space
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
    authorize @space
  end

  # saving of the title and the description
  def update_description
    @space = Space.find(params[:id])
    authorize @space
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
    authorize @space
  end

  # saving availabilities and price update index
  def update_parameters
    skip_authorization
    @space = Space.find(params[:id])
    @space.update(space_params)
    if @space.save
      #edit appelle cette fonction. Faire en sorte de mettre un if pur update la CapacityPerDate et pas ajouter toutes les nouvelles dates de son form quand son edit le permettra
      available_dates = @space.availabilities.split(", ")
      available_dates.each do |date|
        @new_capacity = CapacityPerDay.new(date: date, seats_available: @space.capacity)
        @new_capacity.space = @space
        @new_capacity.save!
      end
      redirect_to dashboard_path
      flash[:notice] = "Votre Space-Work est à jour !"
    else
      render :parameters
    end
  end

  def availability
    @space = Space.find(params[:id])
    authorize @space
    if params[:value] == true
      @space.online = true
    else
      @space.online = false
    end
    @space.save
    respond_to do |format|
      format.js
    end
  end

  def online
    @space = Space.find(params[:id])
    authorize @space
    @space.online = true
    @space.save
      respond_to do |format|
        format.html { redirect_to dashboard_path }
        format.js
      end
  end

  def offline
    @space = Space.find(params[:id])
    authorize @space
    @space.online = false
    @space.save
    respond_to do |format|
      format.html { redirect_to dashboard_path }
      format.js
    end
  end

  private

  def space_params
    params.require(:space).permit(:title, :localisation, :availabilities, :description, :price, :space_type, :capacity, :photo)
  end

  def reservation_params
    params.require(:reservation).permit(:period, :total_price, :user_id, :space_id, :number_worker)
  end
end
