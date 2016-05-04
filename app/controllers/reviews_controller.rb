class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def edit
  end
  
  def create
  	@posting = Posting.find(params[:posting_id])
    @review = @posting.reviews.new(review_params)
    @review.user = current_user

    respond_to do |format|
      if @review.save
        format.html { redirect_to @posting, notice: 'Review was successfully created.' }
        format.json { render @review, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @posting, notice: 'Review was successfully updated.' }
        format.json { render @review, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:posting_id, :rating, :content)
    end
end
