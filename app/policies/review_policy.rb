class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def create?
    # record.user == user
    true
  end

  # def destroy?
  #   true
  # end
end
