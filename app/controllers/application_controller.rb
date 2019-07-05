class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    custom_keys = [:first_name, :last_name]
    
    devise_parameter_sanitizer.permit(:sign_up, keys: custom_keys)
    devise_parameter_sanitizer.permit(:account_update, keys: custom_keys)
  end
end
