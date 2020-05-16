class TagsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]
  def index
    @tags = Tag.all

        sequence = request.query_parameters['sequence']
    type = request.query_parameters['type']

    case type
    when "tagSort"
      puts("I am kopi tag")
      puts @tags
      @tags = @tags.order("tagtext")
      if sequence == "desc"
        @tags = @tags.reverse
      end
    end


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