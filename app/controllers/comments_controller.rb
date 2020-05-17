class CommentsController < ApplicationController
  def create
    @pin = Pin.find(params[:pin_id])

    @comment = @pin.comments.create(comment_params)
    @comment.save

    @board = @pin.board
    redirect_to board_pin_path(@board, @pin)
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end