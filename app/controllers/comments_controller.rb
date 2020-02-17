class CommentsController < ApplicationController
    def create
       
      @pin = Pin.find(params[:id])
      @comment = Comment.new(comment_params)
      @comment.user = current_user
      @comment.pin = @pin
      @comment.save
    redirect_to pin_path
    end

    private
    
    def comment_params
        params.require(:comment).permit(:body)
    end
end