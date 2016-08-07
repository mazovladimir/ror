class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_sign_in_params, if: :devise_controller?

  protected

  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:myname,:mysurname])
  end
  
  def after_sign_in_path_for(resource)
      if current_user.admin?
        root_path
      else
        new_search_path
      end
  end

end
