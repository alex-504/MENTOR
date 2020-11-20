class Mentor::ConsultationsController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

  def index
    @consultations = current_user.consultations_as_mentor.order(created_at: :desc)
    @Consultation = policy_scope(Consultation)

  end
end
