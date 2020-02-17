class PinboardsController < ApplicationController
  before_action :set_pinboard, only: [:show, :edit, :update, :destroy]

  # GET /pinboards
  # GET /pinboards.json
  def index
    @pinboards = Pinboard.all
  end

  # GET /pinboards/1
  # GET /pinboards/1.json
  def show
    @pinboard = Pin.find(params[:id])
  end

  # GET /pinboards/new
  def new
    @pinboard = Pinboard.new
  end

  # GET /pinboards/1/edit
  def edit
  end

  # POST /pinboards
  # POST /pinboards.json
  def create
    @pinboard = Pinboard.new(pinboard_params)
    @pinboard.user = current_user
    respond_to do |format|
      if @pinboard.save
        format.html { redirect_to @pinboard, notice: 'Pinboard was successfully created.' }
        format.json { render :show, status: :created, location: @pinboard }
      else
        format.html { render :new }
        format.json { render json: @pinboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pinboards/1
  # PATCH/PUT /pinboards/1.json
  def update
    respond_to do |format|
      if @pinboard.update(pinboard_params)
        format.html { redirect_to @pinboard, notice: 'Pinboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @pinboard }
      else
        format.html { render :edit }
        format.json { render json: @pinboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pinboards/1
  # DELETE /pinboards/1.json
  def destroy
    @pinboard.destroy
    respond_to do |format|
      format.html { redirect_to pinboards_url, notice: 'Pinboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pinboard
      @pinboard = Pinboard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pinboard_params
      params.require(:pinboard).permit(:title)
    end
end