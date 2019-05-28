class ReviewsController < ApplicationController
  def create
    # skip_authorization
    @space = Space.find(params[:space_id])
    # @space.reviews.build(reviews_params)
    # @review = Review.new(review_params)
    # @review.space = @space
    # if @review.save
    #   redirect_to space_path(@space)
    # else
    #   render 'spaces/show'
    # end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
