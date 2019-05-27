class SpacesController < ApplicationController
  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])
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
  end

  def create_space
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      redirect_to add_photos_path(@space)
    else
      raise
    end
  end

  def photos
    @space = Space.find(params[:id])
  end

  def update_photos
    @space = Space.find(params[:id])
    @space.update(space_params)
    if @space.save
      redirect_to add_description_path(@space)
    else
      raise
    end
  end

  def description
    @space = Space.find(params[:id])
  end

  def update_description
    @space = Space.find(params[:id])
    @space.update(space_params)
    if @space.save
      redirect_to add_parameters_path(@space)
    else
      raise
    end
  end

  def parameters
    @space = Space.find(params[:id])
  end

  def update_parameters
    @space = Space.find(params[:id])
    @space.update(space_params)
    if @space.save
      redirect_to root_path
    else
      raise
    end
  end

  def edit
    @space = Space.find(params[:id])
  end

  def update
    @space = Space.find(params[:id])
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

  private

  def space_params
    params.require(:space).permit(:title, :localisation, :availabilities, :description, :price, :space_type, :capacity, :photo)
  end
end
