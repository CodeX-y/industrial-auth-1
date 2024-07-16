class LikePolicy < ApplicationPolicy
  #create. destroy
  attr_reader :user, :like

  def initialize(user, like)
    @user = user
    @like = like
  end

  def create?
    true
  end

  def destroy?
    user == like.fan
  end
end
