class CertificationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    create?
  end

  def show?
    true
  end

  def create?
    record.mentor.user == user
  end

  def edit?
    true
  end

  def update?
    true
  end
end
