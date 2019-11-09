class PinsController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @pins = Pin.all
  end

  def show
     @pin = Pin.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
     @pin = Pin.new(pin_params)
     @pin.user = current_user


    if @pin.save
      redirect_to @pin
    else
      render 'new'
    end

  end

  def update
  end

  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy
    redirect_to root_path
  end

  private
  def pin_params
    params.require(:pin).permit(:title, :url, :text, :user_id)
  end
end