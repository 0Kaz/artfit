class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:username, :email, :description, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :email, :description, :password, :passwrod_confirmation, :current_password)
  end
end
