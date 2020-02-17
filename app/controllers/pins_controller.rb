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

        @pin.save

        redirect_to @pin
    end
  
    def update
    end
  
    def destroy
    end

    private
    def pin_params
        params.require(:pin).permit(:title, :img_url)
    end
end
