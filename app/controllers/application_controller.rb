class ApplicationController < ActionController::Base 
    before_action :configure_permitted_parameters, if: :devise_controller?

protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [ :name, :email, :address, :avatar, :avatar_cache, :phone_number, :password, :password_confirmation])
        devise_parameter_sanitizer.permit(:account_update, keys: [ :name, :email, :address, :avatar, :avatar_cache, :phone_number, :password, :password_confirmation])
    end

private
    def connect_required
      redirect_to profile_index_path unless user_signed_in?
    end

end
