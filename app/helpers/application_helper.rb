module ApplicationHelper



# Define full name the users
 def full_name
     current_user.fname + ' ' +  current_user.lname
 end

# To define user type

 def user_type
    current_user.admin ? t('admin') : 
    current_user.teacher ? t('teacher') :
    current_user.student ? t('student') : ''
 end

 
 # User Avatar images

 def user_avatar(user_photo)


    
 end
 

 # Define time for welcome

 def welcome_time(time_here)
    
    case time_here.to_i

    when 0..11

       t('morning')
    
    when 12..18
    
       t('afternoon')
    
    when 18..23
       
       t("night")
      
    else
       
       "Hello!"
    end
 end


end
