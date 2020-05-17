class PinsController < ApplicationController
  def index
    @pins = Pin.all
  end

  def show
    @pin = Pin.find(params[:id])
  end

  def new
    # @pin = Pin.new
  end

  def edit
  end

  def create
    @pin = Pin.new(pin_params)
    if @pin.save
    redirect_to @pin
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private
    def pin_params
      params.require(:pin).permit(:title, :image_url, :comment, :user_id)
    end
end