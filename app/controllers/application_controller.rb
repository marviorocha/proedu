class ApplicationController < ActionController::Base

 before_action :authenticate_user!

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



end
