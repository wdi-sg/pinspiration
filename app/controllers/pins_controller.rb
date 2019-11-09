class PinsController < ApplicationController

before_action :authenticate_user!


 def index
    @pin = Pin.all
  end

  def show

    if current_user.id === @pin.user_id
      @pin = Pin.find(params[:id])
    else
      redirect_to root_path
    end

  end

  def new
  end

  def edit
    @pin = Pin.find(params[:id])
  end

  def create

    @pin = Pin.new(pin_params)

    @pin.save
    redirect_to @pin

  end

  def update
    @pin = Pin.find(params[:id])

    @pin.update(post_params)
    redirect_to @pin
  end


  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy

    redirect_to root_path
  end


  private
    def pin_params
      params.require(:pin).permit(:title, :image, :user_id)
    end

end