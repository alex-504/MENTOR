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
  
  def new
    @mentor = Mentor.new
    authorize @mentor
  end
  
  def create
    @mentor = Mentor.new(mentor_params)
    @mentor.user = current_user
    authorize @mentor
    if @mentor.save
      redirect_to mentor_path(@mentor)
    else
      render :new
    end
  end

  private

  def mentor_params
    params.require(:mentor).permit(:description, :price, :availability, :title, :mentor_tag)
  end 
end
