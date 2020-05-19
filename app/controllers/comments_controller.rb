class CommentsController < ApplicationController

      def create
            @comment = Comment.new(comment_params)
            @pin = Pin.find(params[:pin_id])
            @comment.pin = @pin
            @comment.user = current_user
            p @comment

            if @comment.save
                  redirect_to @pin
            else
                  p @comment.errors
                  byebug
            end
      end

            private
            def comment_params
                  params.require(:comment).permit(:text, :user, :pin)
            end
end
