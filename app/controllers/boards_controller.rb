class BoardsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]
  def index
    @boards = Board.where(user_id: current_user.id)

    sequence = request.query_parameters['sequence']
    type = request.query_parameters['type']

    case type
    when "boardSort"
      puts("I am kopi")
      @boards = @boards.order("boardtitle")
      if sequence == "desc"
        @boards = @boards.reverse
      end
    end

  end

  def show
      @board = Board.find(params[:id])
      @pins = @board.pins
    sequence = request.query_parameters['sequence']
    type = request.query_parameters['type']

    case type
    when "pinSort"
      puts("I am kopi pin")
      puts @pins
      @pins = @pins.order("title")
      if sequence == "desc"
        @pins = @pins.reverse
      end
    end
  end

  def new
        @pins = Pin.where(user_id: current_user.id)

  end

  def edit
    @pins = Pin.where(user_id: current_user.id)
    @board = Board.find(params[:id])
  end

  def create
    @board = Board.new(board_params)
    @board.user = current_user
    if @board.save
      redirect_to @board
    else
      @pins = Pin.where(user_id: current_user.id)
      render 'new'
    end

  end

  def update
      @board = Board.find(params[:id])

      @board.update(board_params)
      redirect_to @board
  end

  def destroy
      @board = Board.find(params[:id])
      @board.destroy

      redirect_to boards_path
  end

  private
  def board_params
    params.require(:board).permit(:boardtitle, :pin_ids=>[])
  end

end