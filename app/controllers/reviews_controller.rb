class ReviewsController < ApplicationController
  def create
    @mentor = Mentor.find(params[:mentor_id])
    @review = Review.new(review_params)


  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
