class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  private

  protected

  def configure_permitted_parameters
    added_attrs = [:username, :phone, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit(:sign_in, keys: [:login])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :phone, :password])
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
