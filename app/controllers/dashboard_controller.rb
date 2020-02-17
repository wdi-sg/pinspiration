class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @pins = Pin.where("user_id = ?", current_user.id)
    @comments = Comment.where("user_id = ?", current_user.id)
  end
end