class UsersController < ActionController::Base

  def pins
    @user = User.find(params[:id])
    @pins = @user.pins
  end

end