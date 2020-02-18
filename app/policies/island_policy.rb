class IslandPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true
  end

  def create?
    return true
  end

  def update?
    record.user == user
    # record.user = user de island
    # user = current_user
  end

  def destroy?
    record.user == user
  end
end
