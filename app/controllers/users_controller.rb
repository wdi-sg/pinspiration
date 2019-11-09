class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @pins = Pin.all
  end

private

  def user_params
    params.require(:user).permit(:username)
  end

end