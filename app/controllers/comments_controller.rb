class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    boards_id = params.require(:comment)['boards_id']

    redirect_to '/boards/' + boards_id
  end

  def edit
  end

  def update
  end

  def destroy

    @comment = Comment.find(params[:id])
    @comment.destroy

    var = request.query_parameters
    boards_id = var['board']
    
    redirect_to "/boards/#{var['board']}"

  end

private
  def comment_params
    params.require(:comment).permit( :text, :users_id, :pins_id)
  end
end
