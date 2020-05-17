class BoardsController < ApplicationController

    def index
        @boards = Board.all
    end

    def new
        @board = Board.new
    end

    def edit
    end

    def add_pins
        @board = Board.find(params[:id])
        @pin_ids = board_params[:pin_ids].reject!(&:blank?)
        @board.pin_ids = @pin_ids
        redirect_to board_path(@board)
    end

    def create
        @board = Board.new(board_params)
        @board.user = current_user
        
        if @board.save
            redirect_to pins_path
        else
            render 'new'
        end
    end

    def show
        @board = Board.find(params[:id])
        @pins = @board.pins

        @pins.each do |pin|
            puts pin.title
        end
    end

    private
    def board_params
          params.require(:board).permit(:title, :user, :pin_ids => [])
    end

end