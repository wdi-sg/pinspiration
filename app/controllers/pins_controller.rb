class PinsController < ApplicationController

    before_action :authenticate_user!, :except => [ :show, :index ]

    def index
        @pins = Pin.all 
        # byebug
        # user_session
        # user_session["pin-name"] = "Pinsssss"
    end
  
    def show
        @pin = Pin.find(params[:id])
        @users = User.all
    end
  
    def new
        @pin = Pin.new
    end
  
    def edit
        @pin = Pin.find(params[:id])
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
  
    def update
        @pin = Pin.find(params[:id])

        if @pin.update(pin_params)
          redirect_to @pin
        else
          render 'edit'
        end
    end
  
    def destroy
        @pin = Pin.find(params[:id])
        @pin.destroy
    
        redirect_to pins_path
    end
  end

  private
  def pin_params
      params.require(:pin).permit(:title, :media_url)
  end