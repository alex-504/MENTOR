class MentorsController < ApplicationController

  def index 
    # @mentors= policy_scope(Mentor).order(created_at: :asc)
    # @tags = Tag.all
    
    # @mentor = policy_scope(Mentor)
    # @tags.each do |tag|
    #   tag.name
    # end
    
    if params[:query].present?
      # @mentors = Mentor.where("mentor_tag ILIKE ?", "%#{params[:query]}%")
      @mentors = policy_scope(Mentor).mentor_and_tag_search(params[:query])
    else
      @mentors= policy_scope(Mentor).order(created_at: :asc)
    end
    
    # tag?
    # iterate over @tags?
    # iterate over Mentor.mentor_tag.tag?? 
    
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
    @tags = Tag.all
  end
  
  def create
    @mentor = Mentor.new(mentor_params)
    @mentor.user = current_user
    authorize @mentor
    if @mentor.save
      redirect_to mentors_path
    else
      @tags = Tag.all
      render :new
    end
  end

  private
  
  def mentor_params
    params.require(:mentor).permit(:description, :price, :availability, :title, tag_ids: [] )
  end 
  
  # simple form took care of this logic
  # def create_mentor_tags
  #   unless params[:mentor][:tag_ids].empty?
  #     params[:mentor][:tag_ids].each do |tag|
  #       next if tag.empty?
  #       tag = Tag.find(tag)
  #       MentorTag.create(mentor: @mentor, tag: tag) if tag
  #     end
  #   end
  # end
end
