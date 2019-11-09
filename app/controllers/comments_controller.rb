class CommentsController < ApplicationController
  def index
  end

  def show

  end

  def new
  end

  def edit
  end

  def create
     @pin = Pin.new(pin_params)
     @pin.user = current_user


    if @pin.save
      redirect_to @pin
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end


end