class DashboardsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]
  def index
    @user= current_user
    @comments = Comment.where(user_id: current_user.id)
    @pins = Pin.where(user_id: current_user.id)
  end

  def show

  end

  def new


  end

  def edit

  end

  def create


  end

  def update

  end

  def destroy

  end



end