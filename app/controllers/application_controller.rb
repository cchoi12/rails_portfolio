class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # if: :devise_controller means it will only run if it is a devise related action
  before_action :configure_permitted_parameters, if: :devise_controller?

  # This method will sanitize devise so it will allow our own parametrs to be password.
  # sign_up = registration & account_update = edit_account. 
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
