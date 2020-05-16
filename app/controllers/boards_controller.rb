class BoardsController < ApplicationController
  def show
    @board = Board.find(params[:id])
  end

  def new
  end

  def create
    @current_user = current_user
    @board = @current_user.boards.create(board_params)

    @board.save
    redirect_to @board
  end

  private
    def board_params
      params.require(:board).permit(:name)
    end

end