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
    def board_params
      # params.require(:kopi).permit(:name, :origin_id,:roast_id,:user_id)
    end
end