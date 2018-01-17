class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  layout :layout_by_resource
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  client = OneSignal::Client.new(auth_token: 'YmFmNjdlM2QtY2RjNS00MjlhLWIxYTItYTkxMTYxYWJhNTIy', app_id: 'f25ce7ac-9737-4b46-af9a-42c20444cf12')
  client.players.all




  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :lastname])
  end


  private


## Create Admin Default

  def create_admin_user
    u = User.new(:name => "Admin", :email => "admin@example.com", :password => "admin", :superadmin_role => "true")
    u.save!(:validate => false)
    session[:guest_user_id] = u.id
    u
  end


  def layout_by_resource
     if user_signed_in? == false
       "login"
     else
       "application"
     end

   end


end
