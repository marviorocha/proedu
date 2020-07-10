class ApplicationController < ActionController::Base

 before_action :authenticate_user!
 before_action :configure_permitted_parameters, if: :devise_controller?
# layout
layout :layout_resource

# private

helper :all

private

def layout_resource

    if user_signed_in? == true
    "application"
    else 
     "login"
    end
    

end


def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fname, :lname])
    devise_parameter_sanitizer.permit(:account_update, keys:  [:fname, :lname, :birthday, :avatar_user])
end

end
