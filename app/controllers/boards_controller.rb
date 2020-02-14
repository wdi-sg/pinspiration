class BoardsController < ApplicationController
  # before_action :set_pin, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /boards
  def index
    @pins = Pin.all
  end

  # GET /boards/1
  def show
  end

  # GET /boards/new
  def new
    @pin = Pin.new
  end

  # GET /boards/1/edit
  def edit
  end

  # POST /boards
  def create

  end

  # PATCH/PUT /boards/1
  # PATCH/PUT /boards/1.json
  def update

  end

  # DELETE /boards/1
  # DELETE /boards/1.json
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_pin
    #   @pin = Pin.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def board_params
      params.require(:board).permit(:title, :user)
    end
end
