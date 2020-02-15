class CommentsController < ApplicationController
  def show
  end

  def new
  end

  def edit
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.pin, notice: 'Comment Posted' }
        format.json { render :show, status: :ok, location: @pin }
      else
        format.html { redirect_to @comment.pin, notice: 'Error Posting' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
    @comment = Comment.find(params[:id])
    @pin = @comment.pin
    if @comment.user == current_user
      @comment.destroy
      respond_to do |format|
        format.html { redirect_to @pin, notice: 'Comment was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to @pin, notice: 'Cannot Delete'
    end
  end

private

  def comment_params
    params.require(:comment).permit(:body, :pin_id, :user_id)
  end
end
