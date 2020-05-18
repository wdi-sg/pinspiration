class ApplicationController < ActionController::Base

    def after_sign_up_path_for(resource)
  stored_location_for(resource) || username_path
end
end
