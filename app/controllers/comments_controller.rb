class CommentsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]
  def index

  end

  def show

  end

  def new
    puts "rawrjdlsfdsalfndaslkjfldasjfl"
    puts params[:id]

  end

  def edit
    puts params
    puts "hajfh hlfdhslfhasklfh hskldfhaslkdfhl"
    @comment = Comment.find(params[:id])

  end

  def create
      @comment = Comment.new(comment_params)
      puts "fjdsoiafhhfoidhfoisahfioashfoihdasofihasofh"
      puts comment_params
      puts params[:id]
      @comment.user = current_user
      puts @comment.body
      puts @comment.pin_id
      @pin = Pin.find(params[:id])
      @comment.pin = @pin
      #@comment.save



      if @comment.save
        puts "I have reached to this beautiful land"
        redirect_to @pin
      else
           puts "I have not reached to this beautiful land"
       render 'new'
      end
  end

  def update

      @comment = Comment.find(params[:id])

      @comment.update(comment_params)
      redirect_to dashboards_path
      #@pin = Pin.find(params[:id])

      #@pin.update(pin_params)
      #redirect_to @pin
  end

  def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy

      redirect_to dashboards_path
  end

private
  def comment_params
    params.require(:comment).permit(:body, :pin_id)
  end

end