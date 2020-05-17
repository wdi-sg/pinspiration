class PinsController < ApplicationController

      def index
            @pins = Pin.order(created_at: :desc)
      end
      def new
            @pin = Pin.new
            # @comment = Comment.new
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

      def add_to_boards
      end
      
      private
            def pin_params
                  params.require(:pin).permit(:title, :text, :img_url, :board_ids)
            end
end
