class TagsController < ApplicationController

            def index
            @tags = Tag.all
      end

      def new
            @tag = Tag.new
      end



      def show
            @tag = Tag.find(params[:id])
            @pins = @tag.pins
      end

      def create
            @tag = Tag.new(tag_params)

            if @tag.save
                  redirect_to pins_path
            else
                  render 'new'
            end

      end

            private
            def tag_params
                  params.require(:tag).permit(:name, :pin_ids => [])
            end
end
