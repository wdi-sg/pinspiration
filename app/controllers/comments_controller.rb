class CommentsController < ApplicationController
    # before_action :set_pin
    before_action :authenticate_user!
    def create
    @pin = Pin.find(params[:pin_id])
    @comment = @pin.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to pin_path(@pin)
    end



    private

    def comment_params
        params.require(:comment).permit(:body, :pin_id)
    end

    def set_pin
    @pin = Pin.find(params[:pin_id])
    end
end
