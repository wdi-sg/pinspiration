class CommentsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json

  def commentsbyuser 
    @comments = Comment.where(user_id: current_user.id)
    render :dashboard
  end

  def index
    if params.has_key?(:pin_id)
      @pin = Pin.find(params[:pin_id])
      redirect_to @pin
    end
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
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.pin_id = (params[:pin_id])
    @comment.save

    respond_to do |format|
      if @comment.save
        format.html { redirect_to pin_comments_path, notice: "Comment was successfully created." }
        format.json { render :new, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])
    puts @comment
    @comment.update(comment_params)

    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to pin_comments_path, notice: "Comment was successfully updated." }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to  pin_comments_path, notice: "Comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = Comment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def comment_params
    params.require(:comment).permit(:content, :pin_id)
  end
end