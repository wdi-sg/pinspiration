class CommentsController < ApplicationController
  before_action :authenticate_user!, :except => [ :index, :show ]

  def index
    @comments = Comment.where(user_id: current_user).order_list(params[:sort_by])
  end

  def new
    @pin = Pin.find(params[:pin_id])
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.pin_id = params[:pin_id]

    if @comment.save
      redirect_to '/pins/' + params[:pin_id]
    else
      render 'new'
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.user = current_user

    if @comment.update(comment_params)
      redirect_to pin_path(@comment.pin_id)
    else
      render plain: @comment.errors.inspect
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end