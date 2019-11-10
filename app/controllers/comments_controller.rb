class CommentsController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  def create
    @pin = Pin.find(params[:pin_id])
    @comment = @pin.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to pin_path(@pin, notice: 'comment was successfully created.')
  end

private
  def set_pin
    @pin = Pin.find(params[:pin_id])
  end

  def comment_params
    params.require(:comment).permit(:content, :pin_id, :user_id)
  end

end