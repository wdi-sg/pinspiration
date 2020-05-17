class CommentsController < ApplicationController

      def create
            @comment = Comment.new(comment_params)
            @comment.pin_id = params[:pin_id]
            @comment.user = current_user
            if @comment.save
                  redirect_to "/pins/#{@comment.pin_id}"
            else
                  p @comment.errors
                  redirect_to pins_path
            end
      end

            private
            def comment_params
                  params.require(:comment).permit(:text, :user, :pin)
            end
end
