class ReviewsController < ApplicationController
  def new
    # since it is a children, it needs its parent ID !!!!!!
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
    @review.save
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)

    @review.restaurant = @restaurant
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
