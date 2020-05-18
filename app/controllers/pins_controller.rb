class PinsController < ApplicationController
    def new
    end
  
    def create
      @pin = Pin.new(pin_params)
  
      if @pin.save
        redirect_to @pin
      else 
        render "new"
      end
    end
  
    def show
      @pin = Pin.find(params[:id])
    end

    def index
        # test to see if we are at /pins/:id/rangers or /rangers
        @pins = Pin.all
    end

    def edit
      @pin = Pin.find(params[:id])
    end

    def update
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
      params.require(:pin).permit(:name, :description)
    end
  
  end