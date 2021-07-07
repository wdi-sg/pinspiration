class CommentsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
  end

  def new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    puts @comment
    if @comment.save
      redirect_to @comment.pin
    else
      render plain: "Comment not able to post, developer do something!"
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @comment = Comment.find(params[:id])
    @pin = @comment.pin
      if @comment.user == current_user
        @comment.destroy
        redirect_to @pin
      else
        render plain:"Not able to delete, developer take action!"
      end
  end


private

  def comment_params
    params.require(:comment).permit(:body, :pin_id, :user_id)
  end
end