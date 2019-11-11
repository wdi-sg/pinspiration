class UsersController < ApplicationController
  def show
    @user = current_user.id
    @pins = Pin.where(user_id: @user)
    @comments = Comment.where(user_id: @user)

  end

end