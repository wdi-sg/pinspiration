class PinsController < ApplicationController

    def index 
        @pins = Pin.all
    end

    def show 
        @pin = Pin.find(params[:id])
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
    
        @pin.update(pin_params)

        redirect_to @pin
    end 

    def destroy
        @pin = Pin.find(params[:id])
        @pin.destroy
        @pins = Pin.all
        redirect_to @pins
    end

    private

    def pin_params
        params.require(:pin).permit(:url , :caption)
    end

end