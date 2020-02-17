class PinsController < ApplicationController
  # before_action :set_pin, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /pins
  # GET /pins.json
  def index
    if user_signed_in?
      puts "=========="+ current_user.inspect+ "=========="
    @current_user_id = current_user[:id]
    @pins = Pin.all
    end
end

  def dashboard
    @user = current_user
    @pins = Pin.where("user_id = ?", current_user.id)
    puts "===== User is:"+ @user.inspect
  end


  # GET /pins/1
  # GET /pins/1.json
  def show
    @pin = Pin.find(params[:id])

  end

  # GET /pins/new
  def new
    @pin = Pin.new
  end

  # GET /pins/1/edit
  def edit
    @pin = Pin.find(params[:id])

  end

  # POST /pins
  # POST /pins.json
  def create
    if user_signed_in?

      byebug
      @user_id = current_user.id.to_s
      puts 'Current User ID is:' + @user_id
      @pin = Pin.new(title: pin_params[:title], image: pin_params[:image], user_id: @user_id)
      @pin.user = current_user
      puts 'pin user is:' + @pin.user.to_s

      @pin.save
    # respond_to do |format|
      if @pin.save
        redirect_to '/pins'
        # format.html { redirect_to @pin, notice: 'Pin was successfully created.' }
        # format.json { render :show, status: :created, location: @pin }
      else
        puts @pin.errors.messages
        redirect_to '/pins/new'
        # format.html { render :new }
        # format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pins/1
  # PATCH/PUT /pins/1.json
  def update
    # respond_to do |format|
    @pin = Pin.find(params[:id])

    @pin.update(pin_params)
      if @pin.update(pin_params)
      redirect_to @pin
        # format.html { redirect_to @pin, notice: 'Pin was successfully updated.' }
        # format.json { render :show, status: :ok, location: @pin }
      else
        puts @pin.errors.messages
        redirect_to '/pins/'+@user_id+'edit'
        # format.html { render :edit }
        # format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
  end

  # DELETE /pins/1
  # DELETE /pins/1.json
  def destroy
      @pin = Pin.find(params[:id])
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
      params.require(:pin).permit(:id, :title, :image)
    end
end
