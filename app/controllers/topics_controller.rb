class TopicsController < ApplicationController
  def create
    @topic = Topic.new(topic_params)
    @consultation = Consultation.find(params[:consultation_id])
    @topic.consultation = @consultation
    authorize @topic
    if @topic.save
      flash[:success] = "Topics created!"
      redirect_to consultation_path(@consultation)
    else
      render 'consultations/show'
    end
  end

  private
  def topic_params
    params.require(:topic).permit(:title, :checked)
  end
end
