class FeedsController < ApplicationController
  before_action :set_user

  def index
    @activities = @user.activity_feed
  end


  private

  def set_user
    @user = User.find params[:user_id]
  end
end
