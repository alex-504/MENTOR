class MentorsController < ApplicationController

  def index
    @mentors = policy_scope(Mentor).order(created_at: :asc)
    @mentor = policy_scope(Mentor)

  end

  def show
    #show 1 mentor page
    @mentor = Mentor.find(params[:id])
    @consultation = Consultation.new
    authorize @mentor
  end

  private

  def mentor_params
    params.require(:mentor).permit(:description, :price, :availability, :title)
  end
end
