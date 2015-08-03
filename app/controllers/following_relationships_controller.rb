class FollowingRelationshipsController < ApplicationController
  def create
    current_user.follow user
    redirect_to user, notice: "Now following user."
  end

  def destroy
    current_user.unfollow user
    redirect_to user, notice: "Unfollowed user."
  end

  private

  def user
    @_user ||= User.find(params[:user_id])
  end
end
