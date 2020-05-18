class CommentsController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    if @comment.save
      @pin = Pin.find(params[:pin_id])
      redirect_to pin_url(@pin)
    else
      puts @comment.errors.full_messages
    end
  end

  def update
  end

  def destroy
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :pin_id)
    end


end