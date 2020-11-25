class ConsultationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    true
  end

  def update?
    true
  end

  def show?
    true
  end

end
