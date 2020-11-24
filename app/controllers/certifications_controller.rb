class CertificationsController < ApplicationController
  def create
    @certification = Certification.new(create_params)
    authorize @certification
    @certification.save
    redirect_to consultation_path(params[:consultation_id])
  end

  private

  def create_params
    params.require(:certification).permit(:user_id, :mentor_id, :tag_id)
  end

end
