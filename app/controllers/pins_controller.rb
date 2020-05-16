class PinsController < ApplicationController
  def index
  end

  def new
  end

  def show
      @pin = Pin.find(params[:id])
      puts '********************'
      puts @pin.id
       puts '********************'

      @comment = Comment.find(@pin.id)


      puts '%%%%%%%%%%%%%%%%%%%%%%'
      puts @comment
      puts '%%%%%%%%%%%%%%%%%%%%%%'
  end

  def create
      @pin = Pin.new(pins_params)
      @pin.save
      redirect_to root_path
  end

  private

  def pins_params
    params.require(:pin).permit(:title, :img_url)
  end

end