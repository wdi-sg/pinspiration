class PinsController < ApplicationController
  def index
  end

  def show
  end

  def new
    vars = request.query_parameters
    @boards_id = vars['board']

    
    
  end

  def create
    @pin = Pin.create(pin_params)
    boards_id = pin_params['boards_id']
    redirect_to "/boards/" + boards_id
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  def pin_params
    params.require(:pin).permit(:img_link, :boards_id)
  end
end
