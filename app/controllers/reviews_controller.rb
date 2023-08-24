class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # create review with params passed by new
    @restaurant = Restaurant.find(params[:restaurant_id])
    # assign restaurant to variable so tou can attach the review
    @review = Review.new(review_params)
    # attach review to restaurant
    @review.restaurant = @restaurant
    #validation
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
