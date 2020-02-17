class PinsController < ApplicationController
before_action :authenticate_user!
  def index
    @pin = Pin.all
  end
  def show
      @pin = Pin.find(params[:id])
  end
  def new
  end
  def edit
      @pin = Pin.find(params[:id])
  end
  def create
    @pin = Pin.new(pin_params)
        @pin.user_id = current_user.id
      if @pin.save
        redirect_to @pin
      else
        @pin
        render 'new'
      end
    end
    def created
    @pin = Pin.where(:user_id=>current_user.id)
    end
  def update
    @pin = Pin.find(params[:id])
    if current_user.id == @pin.user_id
      params[:media_url] = @pin.media_url
      @pin.update(pin_params)
      redirect_to @pin
    else
      render plain: 'Not authorized!'
    end
  end
  def destroy
    @pin = Pin.find(params[:id])
    if current_user.id == @pin.user_id
      @pin.destroy
      redirect_to root_path
    else
      render plain: 'Not authorized!'
    end
  end
  private
    def pin_params
      params.require(:pin).permit(:title,:media_url)
    end
end