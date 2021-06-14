class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    before_action :update_allowed_parameters, if: :devise_controller?
    before_action :authenticate_account!
      protected
      def update_allowed_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password])
        devise_parameter_sanitizer.permit(:account_update, keys:
        [:username, :email, :password, :current_password])
      end
end
