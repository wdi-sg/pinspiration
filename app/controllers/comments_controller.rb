class CommentsController < ApplicationController

  def create
    @pin = Pin.find(params[:pin_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.pin = @pin
    if @comment.save
      redirect_to pin_path(@pin)
    end
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