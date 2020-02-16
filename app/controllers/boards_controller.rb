class BoardsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def index
    sort_by = params["sort"]
    @boards = current_user.board
    if sort_by == "asc"
      @boards = @boards.sort_by { |board| board.pins.length }
      @message = "Least to most"
    elsif sort_by =="desc"
      @boards = @boards.sort_by { |board| board.pins.length }.reverse
      @message = "Most to least"
    end
    
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
