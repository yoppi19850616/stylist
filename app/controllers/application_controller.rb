class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:email,:nickname, :last_name, :first_name, :last_name_furigana, :first_name_furigana,
                                             :phonenumber])
  end
end
