class PinsController < ApplicationController
  def index
  end

  def show
    @pin = Pin.find(params[:id])
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

private
  def pin_params
    params.require(:pin).permit(:title, :image, :caption)
  end