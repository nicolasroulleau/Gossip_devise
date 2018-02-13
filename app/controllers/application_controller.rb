class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :unblock_parameters, if: :devise_controller?

  def unblock_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :sign_up_code])
  end
end
