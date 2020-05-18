class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /pins
  # GET /pins.json
  def index
    id = current_user.id
    @pins = Pin.where(user_id:id).order("created_at DESC")
    @comments = Comment.where(user_id:id).order("created_at DESC")
    
  end

  # GET /pins/1
  # GET /pins/1.json
  def show
    @comment = Comment.new
    @comments = @pin.comments.order("created_at DESC")
  end

  # GET /pins/new
  def new
    @pin = Pin.new
    @userid = current_user.id
  end

  # GET /pins/1/edit
  def edit
    @userid = current_user.id
  end

  # POST /pins
  # POST /pins.json
  def create
    @pin = Pin.new(pin_params)
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
    respond_to do |format|
      if @pin.update(pin_params)
        format.html { redirect_to @pin, notice: 'Pin was successfully updated.' }
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
      format.html { redirect_to pins_url, notice: 'Pin was successfully destroyed.' }
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
      params.require(:pin).permit(:title, :url, :user_id)
    end
end
