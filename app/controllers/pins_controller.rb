class PinsController < ApplicationController
    before_action :find_pin, only: [:show, :edit, :update, :destroy]
    # before_action :authenticate_user!, :except => [ :show, :index ]


  def index
    @pins = Pin.all.order("created_at DESC")
  end


  def show
    @pin = Pin.find(params[:id])
  end


  def new
# FOR LOGGED IN USER
     @pin = current_user.pins.build
  end


  def create
# FOR LOGGED IN USER
     @pin = current_user.pins.build(pin_params)
    if @pin.save
        redirect_to @pin, notice: "You have created a new Pin"
    else
        render 'new'
    end
  end


  # def edit
  # end


  def update
    if @pin.update(pin_params)
        redirect_to @pin, notice: "Your pin has been updated"
    else
        render 'edit'
    end
  end



  def destroy
    @pin.destroy
    redirect_to root_path
  end



private

  def pin_params
    params.require(:pin).permit(:title, :media_url)
  end


  def find_pin
    @pin = Pin.find(params[:id])
    end

end