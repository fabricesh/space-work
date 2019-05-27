class UsersController < ApplicationController
  def dashboard
    @spaces = current_user.spaces
    skip_authorization
  end

  def destroy
    @space = Space.find(params[:id])
    @space.destroy
  end

  def online
    @space = Space.find(params[:id])


  end
end
