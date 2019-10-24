class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  layout :layout_by_resource
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  helper :all

  private

  def layout_by_resource

    if user_signed_in? == false
      "login"
    else
      "application"
    end

  end

  def after_sign_in_path_for(resource)
    if resource.uid
     @curse = Curse.find_by(uid: resource.uid)
     @curse.users << current_user.id
    else
      user_path(resource)
    end
  end


  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastname, :curse_ids, :uid ])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :lastname, :curse_ids, :avatar ])
  end



end
