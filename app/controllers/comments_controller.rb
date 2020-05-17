class CommentsController < ApplicationController

      def create
            @comment = Comment.new(comment_params)
            @comment.user = current_user
            if @comment.save
                  redirect_to "/pins/#{@comment.pin_id}"
            else
                  redirect_to "/pins/#{@comment.pin_id}"
            end
      end

            private
            def comment_params
                  params.require(:comment).permit(:text, :user, :pin)
            end
end
