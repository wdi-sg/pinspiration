class CommentsController < ApplicationController
before_action :authenticate_user!
  def index
    # @comment = Comment.where(user_id: current_user.id)
    @pin = Pin.all
  end
  def show
  end
  def new
  end
  def edit
  end
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
      if @comment.save
        redirect_to @comment
      else
        @comment
        render 'new'
      end
  end
  def update
  end
  def destroy
  end
  private
    def comment_params
    params.require(:comment).permit(:body,:user_id,:pin_id)
    end
end