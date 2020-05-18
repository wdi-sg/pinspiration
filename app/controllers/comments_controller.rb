class CommentsController < ApplicationController

before_action :authenticate_user!

  def new
      @pin = Pin.all
  end

  def index

      @comments = Comment.all
      @pin = Pin.all
  end

    def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to @comment
  end

    def edit
        @comment = Comment.find(params[:id])
  end

    def update
      @comment = Comment.find(params[:id])
      @comment.update(comment_params)
      redirect_to @comment
  end


  def show
    @comment = Comment.find(params[:id])

  end

def destroy
  @comment = Comment.find(params[:id])
  @comment.destroy

  redirect_to root_path
end

private

  def comment_params
    params.require(:comment).permit(:content)
  end

end
