class PinsController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]
  def index
     @pins = Pin.all
  end

  def show
    @pin = Pin.find(params[:id])
  end

  def new
    @pins = Pin.all
  end

  def edit
    @pin = Pin.find(params[:id])
  end

  def create
    @pin = Pin.new(pin_params)
    @pin.user = current_user
    @pin.save
    if @pin.save
      redirect_to @pin
    else
      render 'new'
    end
  end

  def update
    @pin = Pin.find(params[:id])

    @pin.update(pin_params)
    redirect_to @pin
  end

  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy
    redirect_to root_path
  end

  private
  def pin_params
    params.require(:pin).permit(:title, :image)
  end
end