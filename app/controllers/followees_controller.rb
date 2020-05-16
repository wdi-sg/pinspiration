class FolloweesController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]
  def index
    @users= User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new

    puts params[:id]
    puts current_user.id

    if Followee.exists?(user_id: current_user.id, followee_id: params[:id] )
      puts "does exist"
      redirect_to others_path
    else
      puts "does not exist"
      @followee = Followee.new(:followee_id => params[:id])
      @followee.user = current_user
      @followee.save
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



      if Followee.exists?(user_id: current_user.id, followee_id: params[:id] )
      puts "does exist"
        @followee = Followee.find_by user_id: current_user.id, followee_id: params[:id]
      @followee.destroy
      redirect_to others_path
    else
      puts "does not exist"


      redirect_to others_path
    end

  end



end