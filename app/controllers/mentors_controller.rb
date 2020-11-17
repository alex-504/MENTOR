class MentorsController < ApplicationController
  def show
    #show 1 mentor page
    @mentor = Mentor.find(params[:id])
    @consultation = Consultation.new    
    authorize @mentor
  end
end
