class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # users should only see the bookings of their ducks OR their own bookings
      # scope.where(record.duck.user == user || record.user == user)
      scope.where(user: user)
    end
  end

  def new?
    true
  end

  def create?
    true
  end

  def edit?
    record.duck.user == user
  end

  def destroy?
    record.duck.user == user
  end
end
