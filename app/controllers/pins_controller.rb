class PinsController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]


  def index
    @pins = Pin.all
  end

  def show
    @pin = Pin.find(params[:id])
    @comments = @pin.comments
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(pin_params)
    @pin.user = current_user
    if @pin.save
      redirect_to @pin
    else
      render plain: "You're not allowed to create!"
    end
  end

  def edit
    @pin = Pin.find(params[:id])
    puts @pin.user
    if @pin.user == current_user
      return
    else
      render plain: "You cannot edit!"
    end
  end

  def update
    @pin = Pin.new(pin_params)
    @pin.user = current_user
    if @pin.update(pin_params)
      redirect_to @pin
    else
      render plain: "You're not allowed to edit!"
    end
  end

  def destroy
      @pin = Pin.find(params[:id])
      if @pin.user == current_user
        @pin.destroy
        redirect_to root_path
      else
      render plain: "You're not allowed to delete!"
    end
  end


private
# ONLY ALLOW SELECTED PARAMETERS
  def pin_params
    params.require(:pin).permit(:title, :media_url, :user_id)
  end
end