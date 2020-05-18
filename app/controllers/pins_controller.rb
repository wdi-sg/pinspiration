class PinsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    @pin = pins_params

    @pin.save

  end

private

  # this defines the fields I want to add into the pins table
  def pins_params
    params.require(:pin_new).permit(:title, :description, :url)
  end

end