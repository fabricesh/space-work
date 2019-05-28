class ReviewsController < ApplicationController
  def new
    skip_authorization
    @space = Space.find(params[:space_id])
    # @user = User.find(params[:space_id])
    @review = Review.new
  end
  def create
    @space = Space.find(params[:space_id])
    @review = Review.new(review_params)
    @space.review = @space
    if @review.save
      # redirect_to dashboard_path(@spaces)
    else
      flash[:alert] = "Something went wrong."
        render :new
    end
  end

private

def review_params
    params.require(:review).permit(:content)
  end
end
