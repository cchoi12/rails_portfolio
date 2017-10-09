module DeviseWhitelist
  extend ActiveSupport::Concern

  # included do comes from ActiveSupport::Concern, this allows us to add a
  # before_action to the controller we include it into.
  included do
    # if: :devise_controller means it will only run if it is a devise related action
    before_action :configure_permitted_parameters, if: :devise_controller?
  end

  # This method will sanitize devise so it will allow our own parametrs to be password.
  # sign_up = registration & account_update = edit_account.
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
