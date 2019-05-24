class UsersController < ApplicationController

  def dashboard
    @spaces = current_user.spaces
    skip_authorization
  end
end
