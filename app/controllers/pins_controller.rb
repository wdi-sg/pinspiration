class PinsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @pins = Pin.all
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
    @pin.user = current_user

    respond_to do |format|
      if @pin.save
        format.html { redirect_to @pin, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy

    redirect_to pins_path
  end

  private

  def pin_params
    params.require(:pin).permit(:title, :photo_url, :caption, :user_id)
  end

end
