class PinsController < ApplicationController
  before_action :authenticate_user!, :except => [ :index, :show ]

  def index
    if (params.has_key?(:user))
      @pins = Pin.where(user_id: params[:user]).order(created_at: :desc)
    else
      @pins = Pin.all.order_list(params[:sort_by])
    end
  end

  def new
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

  def show
    @pin = Pin.find(params[:id])
  end

  def edit
    @pin = Pin.find(params[:id])
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

  private
    def pin_params
      params.require(:pin).permit(:title, :image_url)
    end
end