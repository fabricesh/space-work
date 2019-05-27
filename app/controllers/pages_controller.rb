class PagesController < ApplicationController
  def home
    @spaces = policy_scope(Space)
  end
end
