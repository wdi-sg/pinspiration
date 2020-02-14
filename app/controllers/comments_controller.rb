class CommentsController < ApplicationController
before_action :authenticate_user!
  def index
  end
  def show
  end
  def new
  end
  def edit
  end
  def create
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