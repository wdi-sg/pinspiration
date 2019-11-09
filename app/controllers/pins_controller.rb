class PinsController < ApplicationController

    before_action :authenticate_user!

    def index
        if user_signed_in?
            @pins = Pin.all
        else
            redirect_to new_user_session_url
        end
    end

    def new
    end

    def create
        @pin = Pin.new(pin_params)

        @pin.user = current_user

        @pin.save
        redirect_to @pin
    end

    def show
        @pin = Pin.find(params[:id])
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private
      def pin_params
        params.require(:pin).permit(:title, :image_url)
      end
end