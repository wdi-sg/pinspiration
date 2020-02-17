class CommentsController < ApplicationController
  # before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
    if @comment.user == current_user
      return
    else
      redirect_to @comment, notice: 'This comment is not yours.  Can see, cannot touch!'
    end
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)
    @comment.user == current_user
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.pin_id, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @pin }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
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
    redirect_to @pin, notice: 'Cannot Delete Comment'
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:body, :pin_id, :user_id)
    end
end
