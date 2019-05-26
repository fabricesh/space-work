class UsersController < ApplicationController
  def dashboard
    @spaces = current_user.spaces
    skip_authorization
  end

  def destroy
    @space = Space.find(current_user.space[:id])
    @space.destroy
  end
end
