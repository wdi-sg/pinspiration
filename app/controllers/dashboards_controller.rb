class DashboardsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]
  def index
    @user= current_user
    @comments = Comment.where(user_id: current_user.id)
    @pins = Pin.where(user_id: current_user.id)

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
puts "I am a a happy happy happy happy happy"
#@unsortedboards =Board.includes(:boardfollowees).where(:id=>current_user.id)
#puts @unsortedboards
@testboards = Board.joins(:boardfollowees).select("*")
puts @testboards
  end

  def show

  end

  def new


  end

  def edit

  end

  def create


  end

  def update

  end

  def destroy

  end



end