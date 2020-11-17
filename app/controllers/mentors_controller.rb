class MentorsController < ApplicationController

  def index
    @mentors = policy_scope(Mentor).order(created_at: :asc)
    @mentor = policy_scope(Mentor)
  end
  
  def show
    @mentor = Mentor.find(params[:id])
    @consultation = Consultation.new
    authorize @mentor
  end

end
