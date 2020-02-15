class UsersController < ApplicationController
  # before_action :set_pin, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /boards
  def index
    @users = User.all
  end

  # GET /boards/1
  def show
    @user = User.find(params[:id])
  end

  # GET /boards/new
  def new
    @user = User.new
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
    def user_params
      params.require(:user).permit(:id, :username)
    end
end