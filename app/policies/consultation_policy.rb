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
    record.user == user || record.mentor.user == user
  end

  def show?
    record.user == user || record.mentor.user == user
  end

end
