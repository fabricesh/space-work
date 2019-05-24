class SpacesController < ApplicationController
  def index
    @spaces = Space.all
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

  def photos
    @space = Space.new(space_params)

  end

  def description
    @space = Space.new(params[:space])
  end

  def title
    @space = Space.new(params[:space])
  end

  def create
    @space = Space.new(params[:space])
    if @space.save
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  private

  def space_params
    params.require(:space).permit(:title, :localisation, :availabilities, :price, :space_type, :capacity, :image)
  end
end
