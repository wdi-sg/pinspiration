class PinsController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]
  # before_action :set_pin, only: [:show, :edit, :update, :destroy]

  # GET /pins
  # GET /pins.json
  def index
    @pins = Pin.all
  end

  # GET /pins/1
  # GET /pins/1.json
  def show
    @pin = Pin.find(params[:id])
    @comments = @pin.comments
  end

  # GET /pins/new
  def new
    @pin = Pin.new
    @boards = Board.where("user_id = ?", current_user.id)
  end

  # GET /pins/1/edit
  def edit
    @pin = Pin.find(params[:id])
    @boards = Board.where("user_id = ?", current_user.id)
    if @pin.user == current_user
      return
    else
      redirect_to @pin, notice: 'Cannot Edit'
    end
  end

  # POST /pins
  # POST /pins.json
  def create
    @pin = Pin.new(pin_params)
    @pin.user = current_user
    # A board is optional. We can add our pin to a board later
    respond_to do |format|
      if @pin.save
        format.html { redirect_to @pin, notice: 'Pin was successfully created.' }
        format.json { render :show, status: :created, location: @pin }
      else
        format.html { render :new }
        format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pins/1
  # PATCH/PUT /pins/1.json
  def update
    @pin = Pin.find(params[:id])
    if @pin.user == current_user
      respond_to do |format|
        if @pin.update(pin_params)
          format.html { redirect_to @pin, notice: 'Pin was successfully updated.' }
          format.json { render :show, status: :ok, location: @pin }
        else
          format.html { render :edit }
          format.json { render json: @pin.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to @pin, notice: 'Cannot Edit'
    end
  end

  # DELETE /pins/1
  # DELETE /pins/1.json
  def destroy
    @pin = Pin.find(params[:id])
    if @pin.user == current_user
      @pin.destroy
      respond_to do |format|
        format.html { redirect_to pins_url, notice: 'Pin was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to @pin, notice: 'Cannot Delete'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pin
      @pin = Pin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pin_params
      params.require(:pin).permit(:title, :img_url, :user_id, :board_id)
    end
end
