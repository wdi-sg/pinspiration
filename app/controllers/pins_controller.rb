class PinsController < ApplicationController
  def show
    @pin = Pin.find(params[:id])
    @comments = Comment.all
  end

  def edit
    @pin = Pin.find(params[:id])
  end

  def index
    @pins = Pin.all
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

  def new
  end

  def update
    byebug
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
    params.require(:pin).permit(:title, :imgurl)
  end
end