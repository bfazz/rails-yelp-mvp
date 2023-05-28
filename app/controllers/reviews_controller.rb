class ReviewsController < ApplicationController
  # A visitor can add a new review to a restaurant

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
