class Mentor::ConsultationsController < ApplicationController
  def index
    @consultations = policy_scope(Consultation).order(created_at: :desc)
    @Consultation = policy_scope(Consultation)

  end
end
