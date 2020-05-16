class PinsController < ApplicationController

      def new
            @pin = Pin.new
      end

      def create
            @pin = Pin.new(pin_params)
            @pin.user = current_user
            if @pin.save
                  redirect_to @pin
            else
                  render  'new'
            end
      end

      def show
            @pin = Pin.find(params[:id])
      end

      private
            def pin_params
                  params.require(:pin).permit(:title, :text, :img_url)
            end
end
