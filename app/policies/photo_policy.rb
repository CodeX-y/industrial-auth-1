class PhotoPolicy < ApplicationPolicy
  attr_reader :user, :photo

  def initialize(user, photo)
    @user = user
    @photo = photo
  end

  def show?
    user == photo.owner ||
      !photo.owner.private? ||
      photo.owner.followers.include?(user)
  end

  def create?
    user == current_user
  end

  def destroy?
    create?
  end

  def edit?
    create?
  end

  def update?
    create?
  end
end
