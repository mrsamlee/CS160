class ReviewsController < ApplicationController
  def index
  @reviews = Review.all
  end

  def new
      @review = Review.new
  end

  def create
      @review = Review.new(review_params)
      if @review.save
        redirect_to '/reviews'
      else
        render 'new'
      end
  end

  private
  def review_params
      params.require(:review).permit(:content)#.merge(:user_id => current_user.id)
  end

end
