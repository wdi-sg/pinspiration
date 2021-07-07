class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_in_path_for(resource)
    :boards_path # Or :prefix_to_your_route
  end
end