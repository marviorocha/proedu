class ApplicationController < ActionController::Base

before_action :authenticate_user!

# layout
layout "layout_resource"

# private
def layout_resource

    if user_signed_in? == false

    "application"
    else 
     "login"
    end
    

end



end
