class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  layout :layout_by_resource
  protect_from_forgery with: :exception
  private

  def layout_by_resource
     if user_signed_in? == false
       "login"
     else
       "application"
     end
   
   end


end
