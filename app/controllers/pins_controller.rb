class PinsController < ApplicationController

before_action :authenticate_user!

  def new
      @pin = Pin.all
  end

  def index

      @pins = Pin.all

  end

    def create
    @pin = Pin.new(pin_params)
    @pin.user = current_user
    @pin.save
    redirect_to @pin
  end

    def edit
        @pin = Pin.find(params[:id])
  end

    def update
      @pin = Pin.find(params[:id])
      @pin.update(pin_params)
      redirect_to @pin
  end


  def show
    @pin = Pin.find(params[:id])

  end

def destroy
  @pin = Pin.find(params[:id])
  @pin.destroy

  redirect_to root_path
end

private

  def pin_params
    params.require(:pin).permit(:media_url, :caption)
  end

end
