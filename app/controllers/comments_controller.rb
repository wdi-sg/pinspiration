class CommentsController < ApplicationController
  def index
  end

  def show

  end

  def new
  end

  def edit
  end

  def create
     @pin = Pin.find(params[:pin_id])
     @comment = @pin.comments.new(comment_params)
     @comment.user = current_user



    if @comment.save
      redirect_to @pin
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

private
  def comment_params
    params.require(:comment).permit(:title, :text, :user_id)
  end
end