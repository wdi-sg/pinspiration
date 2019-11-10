class PinsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index, :home ]

  def index
    @pins = Pin.all
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
      render 'new'
    end
  end

  def edit
    @pin = Pin.find(params[:id])
  end

  def update
    @pin = Pin.find(params[:id])
    @pin.user = current_user
    @pin.update(pin_params)
    redirect_to @pin
  end

  def show
    @pin = Pin.find(params[:id])
  end

  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy
    redirect_to @pin
  end

  private def pin_params
    params.require(:pin).permit(:title, :img_src)
  end
end