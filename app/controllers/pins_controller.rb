class PinsController < ApplicationController
before_action :authenticate_user!, :except => [ :show, :index ]

  # GET /pins
  def index
    @pins = Pin.all
    # @user = current_user
  end

  # GET /pins/1
  def show
    @pin = Pin.find(params[:id])
  end

  # GET /pins/new
  def new
    @pin = Pin.new
  end

  # GET /pins/1/edit
  def edit
    @pin = Pin.find(params[:id])
  end

  # POST /pins
  def create
   @pin = Pin.new(pin_params)
    @pin.save

    redirect_to @pin
    end


  # PATCH/PUT /pins/1
  def update
    @pin = Pin.find(params[:id])
    @pin.update(pin_params)
      redirect_to @pin

  end

  # DELETE /pins/1
  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy

    redirect_to @pin
  end


# Private
 private
    def pin_params
    params.require(:pin).permit(:title, :image_url)
  end
end