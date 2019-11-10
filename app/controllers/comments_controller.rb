class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def create
    @pin = Pin.find(params[:pin_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.pin = @pin
    if @comment.save
      redirect_to pin_path(@pin)
    end
  end

  def update

  end

  def destroy
    @pin = Pin.find(params[:pin_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to pin_path(@pin)
  end

  private def comment_params
    params.require(:comment).permit(:body)
  end
end