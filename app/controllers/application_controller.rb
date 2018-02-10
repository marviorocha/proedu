class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  layout :layout_by_resource
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  client = OneSignal::Client.new(auth_token: 'YmFmNjdlM2QtY2RjNS00MjlhLWIxYTItYTkxMTYxYWJhNTIy', app_id: 'f25ce7ac-9737-4b46-af9a-42c20444cf12')
  client.players.all



  private

  def layout_by_resource
     if user_signed_in? == false
       "login"
     else
       "application"
     end

  end

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastname, :curse_ids ])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :lastname, :curse_ids ])

  end



end
