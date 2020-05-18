class PinsController < ApplicationController

  def index
    @pins = Pin.all
  end

  def show
    @board = current_user.boards.find(params[:board_id])
    @pin = @board.pins.find(params[:id])

    @comments = @pin.comments.all
  end

  def new
    @board = current_user.boards.find(params[:board_id])
  end

  def create
    @board = current_user.boards.find(params[:board_id])

    @pin = @board.pins.create(pin_params)
    @pin.save

    redirect_to board_pin_url(@board, @pin)
  end

  private
    def pin_params
      params.require(:pin).permit(:title, :image)
    end

end