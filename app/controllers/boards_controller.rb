class BoardsController < ApplicationController
  def new
  end

  def index
  end

  def create
    @board = Board.new(board_params)
    @board.user = current_user
    respond_to do |format|
      if @board.save
        format.html { redirect_to @board, notice: 'Board Created' }
        format.json { render :show, status :ok, location: @board }
      else
        p "whoopsy doopsy"
      end
    end
  end

private

def board_params
  params.require(:board).permit(:name, :user_id)
end

end
