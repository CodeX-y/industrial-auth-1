class CommentPolicy < ApplicationPolicy
  attr_reader :user, :comment

  def initialize(user, comment)
    @user = user
    @comment = comment
  end

  def show?
    true
  end

  def edit?
    user == comment.author
  end

  def update?
    edit?
  end

  def create?
    true
  end

  def destroy?
      edit?
  end

end
