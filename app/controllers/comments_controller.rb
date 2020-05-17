class CommentsController < ApplicationController
    before_action :authenticate_user!
   
    def create
        @pin = Pin.find(params[:pin_id])
        @comment = @pin.comments.create(comment_params)

        if@comment.save
            redirect_to @pin
        end
    end

    def destroy
        @pin = Pin.find(params[:pin_id])
        @comment = Comment.find(params[:id])
        @comment.destroy

        redirect_to @pin
    end
    
    private

    def comment_params
        params.require(:comment).permit(:body, :user_id)
    end

end
