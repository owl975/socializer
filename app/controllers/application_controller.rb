class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :profile_name)
    end

  protect_from_forgery with: :exception
end
