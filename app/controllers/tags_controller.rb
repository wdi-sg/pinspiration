class TagsController < ApplicationController
  def show
    @tag = Tag.find_by tag: params[:tag]
    @pins = @tag.pins
  end
end
