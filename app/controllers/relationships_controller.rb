class RelationshipsController < ApplicationController
  respond_to :html, :js
  before_filter :authenticate

  def create
    @user = User.find(params[:relationship][:followed_id])
    current_user.follow!(@user)
    respond_with(@user, :location => @user)
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow!(@user)
    respond_with(@user, :location => @user)
  end
end
