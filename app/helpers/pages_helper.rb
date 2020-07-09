module PagesHelper

    
def dashboard_user(user_dash)

 
  if user_dash.admin == true
    render "pages/director" 
  elsif user_dash.teacher == true
    render "pages/teacher"
  elsif user_dash.student == true
    render "pages/student"
  else
    
  end
 
end



end
