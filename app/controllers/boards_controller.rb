class BoardsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def index
    @boards = current_user.board
  end

  def show
    @board = Board.find(params[:id])
    puts @board.inspect
  end

  def new
    @pins = Pin.all
  end

  def edit
  end

  def create
    # pins = Pin.where(id: params["pin"]["pin_ids"] - [""])
    @board = Board.new(board_params)
    @board.user = current_user
    # @board.pins.push(pins)
    @board.save
    redirect_to "/boards/" + @board.id.to_s
  end

  def update
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to "/boards"
  end

  private

  def board_params
    params.require(:board).permit(:name, :pin_ids => [])
  end
end
