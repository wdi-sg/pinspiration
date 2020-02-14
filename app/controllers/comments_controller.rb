class CommentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
  end

  def create
      @comment = Comment.new(comment_params)
      @comment.user_id = current_user.id
      @comment.save
      redirect_to @comment
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
      @comment = Comment.find(params[:id])
      # .update also a method
      @comment.update(pin_params)
      redirect_to @comment
  end

  def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_to root_path
  end

private

  def comment_params
    params.require(:comment).permit(:body, :user_id, :pin_id)
  end
end