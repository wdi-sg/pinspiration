class PinsController < ApplicationController
  # before_action :set_pin, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:show, :index]

  # GET /pins
  # GET /pins.json
  def index
    @pins = Pin.all
  end

  def dashboard
    @user = current_user
  end

  # GET /pins/1
  # GET /pins/1.json
  def show
    @pin = Pin.find(params[:id])
    @comments = @pin.comment
    puts @comments.inspect
  end

  # GET /pins/new
  def new
    @pin = Pin.new
  end

  def add
    @pin = Pin.find(params[:id])
    @boards = current_user.board
  end

  def add_to_board
    @pin = Pin.find(params[:id])
    @pin.board = Board.find(params["board"]["board_id"])
    @pin.save
    redirect_to "/boards"
  end

  # GET /pins/1/edit
  def edit
    @pin = Pin.find(params[:id])
    if @pin.user != current_user
      redirect_to root_path
    end
  end

  # POST /pins
  # POST /pins.json
  def create
    @pin = Pin.new(pin_params)
    @pin.user = current_user
    respond_to do |format|
      if @pin.save
        format.html { redirect_to @pin, notice: "Pin was successfully created." }
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
    @pin.user = current_user
    respond_to do |format|
      if @pin.update(pin_params)
        format.html { redirect_to @pin, notice: "Pin was successfully updated." }
        format.json { render :show, status: :ok, location: @pin }
      else
        format.html { render :edit }
        format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pins/1
  # DELETE /pins/1.json
  def destroy
    @pin.destroy
    respond_to do |format|
      format.html { redirect_to pins_url, notice: "Pin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pin
    @pin = Pin.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def pin_params
    params.require(:pin).permit(:title, :url)
  end

  def board_params
    params.require(:board).permit(:board_id)
  end
end
