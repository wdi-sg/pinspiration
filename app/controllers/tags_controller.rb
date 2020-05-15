class TagsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find_by tagtext: params[:name]

  end

  def new


  end

  def edit

  end

  def create
    @tag = Tag.new(tag_params)





      if @tag.save
        redirect_to tags_path
      else
        render 'new'
      end

  end

  def update

  end

  def destroy

  end

private
  def tag_params
    params.require(:tag).permit(:tagtext)
  end

end