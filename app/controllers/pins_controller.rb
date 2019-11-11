class PinsController < ApplicationController

before_action :authenticate_user!


  def index

    @pin = Pin.all

    @order = params[:order]

    puts @order

  end

  def show

    @pin = Pin.find(params[:id])

    @user = @pin.user

  end

  def new

  end

  def edit

    @pin = Pin.find(params[:id])

  end

  def create

    @pin = Pin.new(pin_params)

    @pin.user = current_user

    @pin.save

    if @pin.save
      redirect_to @pin
    else
      render 'new'
    end

  end

  def update
    @pin = Pin.find(params[:id])

    @pin.update(pin_params)

    if @pin.update(pin_params)
      redirect_to @pin
    else
      render action: :edit
    end



  end


  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy

    redirect_to root_path
  end


  private
    def pin_params
      params.require(:pin).permit(:title, :image, :user_id)
    end

end