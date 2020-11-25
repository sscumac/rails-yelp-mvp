class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id]) # because it is nested we need it here as well
  end

  def create
    @review = Review.new(review_params) # create a new review
    # raise
    @restaurant = Restaurant.find(params[:restaurant_id]) # we need `restaurant_id` to associate review with corresponding restaurant
    @review.restaurant = @restaurant # link our review to that specific restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end

    
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
