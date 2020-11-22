class ReviewsController < ApplicationController
  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.mentor = @mentor
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to mentor_path(@mentor)
    else
      # redirect_back(fallback_location: root_path)
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
