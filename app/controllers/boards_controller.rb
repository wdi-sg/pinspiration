class BoardsController < ApplicationController 
  before_action :authenticate_user!

  def index

    querystring = params[:duck].to_s.split("=").last
    
    puts "LOOK HERE "
    puts querystring
    puts "LOOK HERE "
    

    if querystring.blank?
      @boards = Board.all
    else
      puts "HERJEKLEJOIGVRJOBIJRTO "
      @boards = Board.where("name LIKE '%#{querystring}%'")
    end

      respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @board = Board.find(params[:id])
    @pins = Pin.where(boards_id: params[:id])
    @comments = Comment.all
    
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end


end
