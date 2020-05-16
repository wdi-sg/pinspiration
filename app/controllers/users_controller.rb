class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find(current_user.id)

    @boards = Board.all
  end

  def edit
    puts 'hello'
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)

    @user.update(user_params)
    redirect_to '/users'
  end

  private
    def user_params
    params.require(:user).permit(:username)
  end

end