class TagsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.where(name:params[:id])[0]
    @pins = @tag.pins
  end

  def new
    @pins = Pin.all
  end

  def create
    @tag = Tag.new(tag_params)
    pins = params["pin"]["pin_ids"] - [""]
    @pins = Pin.where(id: pins)
    @tag.pins = @pins
    @tag.save
    redirect_to tags_path
    # puts @tag.inspect
  end

  private

  def tag_params
    params.require(:tag).permit(:name, :pin_ids => [])
  end
end
