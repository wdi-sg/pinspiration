class CommentsController < ApplicationController

  def new
    @comments = Comment.all
  end

  def create
    @pin = Pin.find(params[:id])
    @comment = Comment.new()

  end

private

  def comments_params
    params.require(:comment).permit(:body, :pin_id)
  end

end