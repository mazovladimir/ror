class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:myname, :myusurname, :email)
    end
  end
  
  def after_sign_in_path_for(resource)
      if current_user.admin?
        root_path
      else
        new_search_path
      end
  end

end
