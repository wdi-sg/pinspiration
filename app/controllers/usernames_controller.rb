class UsernamesController < ApplicationController  
  def new
  end


  def create
    @username = Username.new(username_params)

    @username.user = current_user

    result = @username.save
    if result == true
    redirect_to @username
    else
        render plain @username.error.inspect
    end
  end
  
  private

  def username_params
    params.require(:username).permit(:name, :user_id)
  end

end  