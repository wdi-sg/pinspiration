class BoardsController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  def show
    @board = Board.find(params[:id])
    @pins = Pin.where("board_id = ?", @board.id)
  end

  def new
  end

  def index
  end

  def create
    @board = Board.new(board_params)
    @board.user = current_user

    if @board.save
      redirect_to @board
    else
      p "error"
    end
  end

private

def board_params
  params.require(:board).permit(:name, :user_id)
end

end
