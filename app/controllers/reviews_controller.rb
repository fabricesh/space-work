class ReviewsController < ApplicationController
  def new
    skip_authorization
    @space = Space.find(params[:space_id])
    # @user = User.find(params[:space_id])
    @review = Review.new
  end

  def create
    skip_authorization
    @space = Space.find(params[:space_id])
    @review = Review.new(review_params)
    @review.space = @space
    @review.user = current_user
    if @review.save

      redirect_to reservations_path
    else
      flash[:alert] = "Something went wrong."
        render :new
    end
  end

private

def review_params
    params.require(:review).permit(:content, :stars)
  end
end
