class PinsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]
  def index
    @pins = Pin.all

        sequence = request.query_parameters['sequence']
    type = request.query_parameters['type']

    case type
    when "pinSort"
      puts("I am kopi pin")
      puts @pins
      @pins = @pins.order("title")
      if sequence == "desc"
        @pins = @pins.reverse
      end
    end
  end

  def show
    @pin = Pin.find(params[:id])


    puts params


  end

  def new
      @tags = Tag.all
  end

  def edit
    @pin = Pin.find(params[:id])
    @tags = Tag.all
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
    params.require(:pin).permit(:title, :url, :tag_ids=>[])
  end

end