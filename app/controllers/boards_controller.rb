class BoardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
  end

  def new
  end

  def create
      @board = Board.new(board_params)
      @board.user_id = current_user.id
      @board.save
      redirect_to @board
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
      @board = Board.find(params[:id])
      # .update also a method
      @board.update(pin_params)
      redirect_to @board
  end

  def destroy
      @board = Board.find(params[:id])
      @board.destroy
      redirect_to root_path
  end

private

  def board_params
    params.require(:board).permit(:name, :user_id)
  end
end