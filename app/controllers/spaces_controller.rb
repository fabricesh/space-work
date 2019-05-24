class SpacesController < ApplicationController


  def show
    @space = Space.find(params[:id])
  end

  def edit
    @space = Space.find(params[:id])
  end

  def update
    @space = Space.find(params[:id])
    @space.update(space_params)
    redirect_to space_path(@space)
  end

    def destroy
    @space = Space.find(params[:id])
    @space.destroy
  end

  private

  def space_params
    params.require(:space).permit(:title, :localisation, :availabilities, :price, :space_type, :capacity, :image)
  end

end
