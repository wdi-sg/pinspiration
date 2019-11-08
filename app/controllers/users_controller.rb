class UsersController < ApplicationController
    def root
      if user_signed_in?
        render plain: "Logged in!"
      else
        redirect_to new_user_session_url
      end
    end
end