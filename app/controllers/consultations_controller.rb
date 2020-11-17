class ConsultationsController < ApplicationController
  
  def index
    @consultations = policy_scope(Consultation).order(created_at: :desc)
    @consultation = policy_scope(Consultation)
  end

    def new
      
    end
    

end
