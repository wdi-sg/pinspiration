class PinsController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @pins = Pin.all
  end

  def show
    @pin = Pin.find(params[:id])
  end

  def new
    @pin = Pin.new
  end

  def edit
  end

  def create
    @pin = Pin.new(pin_params)
    @pin.user = current_user

      if @pin.save
        redirect_to @pin, notice: 'Pin was successfully created.'
      else
        render :new 
    end
  end

  def update
      if @pin.update(pin_params)
        redirect_to @pin, notice: 'Pin was successfully updated.'
      else
        render :edit
    end
  end

  def destroy
    @pin.destroy
      redirect_to pins_url, notice: 'Pin was successfully destroyed.'
  end

  private
    # Only allow a list of trusted parameters through.
    def pin_params
      params.require(:pin).permit(:title, :image_url, :user_id)
    end
end
