class PostsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
  end

  def new
    @users = User.all
  end

  def create
    @post = Post.new(post_params)

    @post.user = current_user

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
    send_data @post.img_url, :type => 'image/png',:disposition => 'inline'

    if params[:park_id].to_i != @post.user.id
      # do something
    end
  end



  def edit
  end


  def update
  end

  def destroy
  end

  private

    def post_params
      params.require(:post).permit(:title, :img_url, :description, :post_id)
    end
end