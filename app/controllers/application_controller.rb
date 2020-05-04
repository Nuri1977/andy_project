class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include PublicActivity::StoreController


  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :users_attributes, :updated_at, :user_id ])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :users_attributes, :updated_at, :user_id])
  end
end
