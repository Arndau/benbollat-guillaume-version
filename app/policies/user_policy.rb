class UserPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

    def index?
      false
    end

    def show?
      user == record.user
    end

    def create?
      true
    end

    def new?
      create?
    end

    def update?
      user == record.user
    end

    def edit?
      update?
    end

    def destroy?
      user == record.user
    end
end
