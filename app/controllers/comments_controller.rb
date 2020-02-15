class CommentsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def index
  end

  def show
  end

  def new
    @pin = Pin.find(params[:id])
  end

  def edit
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

  def comment_params
    params.require(:comment).permit(:body)
  end
end
