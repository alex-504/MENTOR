class ReviewsController < ApplicationController
  def new
    review = Review.new
  end

  def create
    @mentor = Mentor.find(params[:mentor_id])
    @review = Review.new(review_params)
    @review.mentor = @mentor
    authorize @review
    if @review.save
      redirect_to mentor_path(@mentor, anchor: "review-#{@review.id}")
    else
      redirect_back(fallback_location: root_path)
    end


  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
