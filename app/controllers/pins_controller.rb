class PinsController < ApplicationController
  def index
    @pins = Pin.all
  end

  def show
    @pin = Pin.find(params[:id])
  end

  def new
  end

  def edit
    @pin = Pin.find(params[:id])
  end

  def create
    @pin = Pin.new(pin_params)

    if @pin.save!
      redirect_to @pin
    else
      redirect_to new_pin_path
    end
  end

  def update
    @pin = Pin.find(params[:id])

    @pin = Pin.update(pin_params)
    redirect_to @pin
  end

  def destroy
    @pin = Pin.find(params[:id])

    @pin.destroy
    redirect_to root_path
  end
end

private
def pin_params
  params.require(:pin).permit(:title, :caption, :image)
end