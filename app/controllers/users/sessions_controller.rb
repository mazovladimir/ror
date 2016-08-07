class Users::SessionsController < Devise::SessionsController
 before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
  #   super
    set_flash_message :notice, :signed_in, :user => current_user.myname if is_flashing_format?
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:myname,:mysurname])
  # end
end
