class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :profile_name)
  end

  def status_params
      params.require(:status).permit(:user_id, :content)
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
	  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :profile_name, :email, :password, :password_confirmation, :remember_me) }
	  devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :first_name, :last_name, :profile_name, :email, :password, :remember_me) }
	  devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :last_name, :profile_name, :email, :password, :password_confirmation, :current_password) }
  end

  protect_from_forgery with: :exception
end
