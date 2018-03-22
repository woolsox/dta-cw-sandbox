class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  wrap_parameters format: []
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    attributes = %i[email password password_confirmation avatar url]
    devise_parameter_sanitizer.permit(:sign_in, keys: attributes)
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end
end
