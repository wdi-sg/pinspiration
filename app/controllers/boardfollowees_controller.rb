class BoardfolloweesController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]
  def index

  end

  def show

  end

  def new
        if Boardfollowee.exists?(user_id: current_user.id, boardfollowee_id: params[:id] )
      puts "does exist"
      redirect_to others_path
    else
      puts "does not exist"
      @boardfollowee = Boardfollowee.new(:boardfollowee_id => params[:id])
      @boardfollowee.board_id = params[:id]
      @boardfollowee.user = current_user
      @boardfollowee.save
      redirect_to others_path

    end


  end

  def edit

  end

  def create


  end

  def update

  end

  def destroy
      if Boardfollowee.exists?(user_id: current_user.id, boardfollowee_id: params[:id] )
      puts "does exist"
        @boardfollowee = Boardfollowee.find_by user_id: current_user.id, boardfollowee_id: params[:id]
      @boardfollowee.destroy
      redirect_to others_path
    else
      puts "does not exist"


      redirect_to others_path
    end




  end



end