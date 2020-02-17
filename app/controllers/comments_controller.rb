class CommentsController < ApplicationController
  # before_action :set_pin, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index


  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.pin = Pin.find(params[:id])
    @comment.save
    redirect_to @comment.pin

  end

  def update

  end

  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_pin
    #   @pin = Pin.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:body)
    end
end
