class ConsultationChannel < ApplicationCable::Channel
  def subscribed
    consultation = Consultation.find(params[:id])
    stream_for consultation
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
