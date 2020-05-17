class PinsController < ApplicationController

#   def new
#     @kopis = Kopi.all
#   end

  def create
    @pin = Pin.new(pin_params)

    @pin.user = current_user

    @pin.save
    redirect_to @pin
  end


   def show
    
    @pin = Pin.find(params[:id])

  end

   def index
    @pins = Pin.all
   end

private
  def pin_params
    params.require(:pin).permit(:title, :image_url, :user_id, :username_id)
  end  

end