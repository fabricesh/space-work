class SpacePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def index?
    return true
  end

  def show?
    return true
  end

  def create_space?
    return true
  end

  def photos?
    return true
  end

  def update_photos?
    return true
  end

  def description?
    return true
  end

  def update_description?
    return true
  end

  def parameters?
    return true
  end

  def update_parameters?
    return true
  end

  def edit?
    record.user == user
  end

  def update?
    record.user == user
    # - record: the restaurant passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    record.user == user
  end
end
