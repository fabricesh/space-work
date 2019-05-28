class ReviewsController < ApplicationController
  def create
    @space = Space.find(params[:restaurant_id])
      @review = Review.new(review_params)
      @review.restaurant = @restaurant
      if @review.save
        redirect_to space_path(@space)
      else
        render 'space/show'
      end
  end

  private
    def review_params
      params.require(:review).permit(:content)
    end
end
