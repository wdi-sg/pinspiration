class CommentsController < ApplicationController

  def show
    @pin = Pin.find(params[:pin_id])
  end

  def index
  end

  def new
    @pin = Pin.find(params[:pin_id])
  end

  def create
    @pin = Pin.find(params[:pin_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.pin = @pin

    if @comment.save
      redirect_to pin_path(@pin)
    else
      byebug
      render 'new'
    end
  end

  def edit
    @comment = Comment.find(params[:pin_id])
  end

  def update
    @pin = Pin.find(params[:id])
    @comment = Comment.find(params[:pin_id])
    @comment.update(comment_params)

    redirect_to @pin
  end

  def destroy
    @comment = Comment.find(params[:pin_id])
    @comment.destroy
    redirect_to root_path
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end