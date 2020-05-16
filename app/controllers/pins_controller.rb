class PinsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @pins = Pin.all
  end

  def new
  end

  def show
      @pin = Pin.find(params[:id])
      puts '********************'
      puts @pin.id
       puts '********************'

      @comments = Comment.where(pin_id: @pin.id)


      puts '%%%%%%%%%%%%%%%%%%%%%%'
      puts @comments
      puts '%%%%%%%%%%%%%%%%%%%%%%'
  end

  def create
      @pin = Pin.new(pins_params)
      @pin.user = current_user

      if @pin.save
      redirect_to @pin
    else
      render 'new'
    end
  end

  private

  def pins_params
    params.require(:pin).permit(:title, :img_url)
  end

end