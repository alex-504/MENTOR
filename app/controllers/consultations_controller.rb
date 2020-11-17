class ConsultationsController < ApplicationController
  
  def index
    @consultations = policy_scope(Consultation).order(created_at: :desc)
  end
  
  def show
    @consultation = Consultation.find(params[:id])
  end

  def create
    @mentor = Mentor.find(params[:mentor_id])
    @consultation = Consultation.new(consultation_params)
    @consultation.user = current_user
    @consultation.mentor = @mentor
    authorize @consultation
    
    if @consultation.save
      redirect_to consultations_path
      render :new
    end
  end    

  private

  def consultation_params
    params.require(:consultation).permit(:details, :start_time, :duration)
  end
end
