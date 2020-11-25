class MessagesController < ApplicationController

  def create
    @consultation = Consultation.find(params[:consultation_id])
    @message = Message.new(message_params)
    @message.consultation = @consultation
    @message.user = current_user
    authorize @message
    if @message.save
      # redirect_to consultation_path(@consultation, anchor: "chats")
      ConsultationChannel.broadcast_to(
        @consultation,
        render_to_string(partial: "message", locals: { consultation: @consultation, message: @message })
      )
      # redirect_to consultation_path(@consultation, anchor: "message-#{@message.id}", new_message: true)
      render "messages/show"
    else
      render "consultations/show"
    end

  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

end
