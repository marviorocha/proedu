module ApplicationHelper
   
require 'digest/md5'


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

 
 # User Avatar and images

 def user_avatar(user_photo, user_size)


hash = Digest::MD5.hexdigest(user_photo.email.downcase)
gravatar = "https://www.gravatar.com/avatar/#{hash}?s=#{user_size}&d=robohash"

  if current_user.avatar_user.attached? == false
    image_tag(gravatar, class: "app-sidebar__user-avatar")
  else
    image_tag(user_photo.avatar_user.variant(resize_to_limit: [user_size, user_size]), class: "app-sidebar__user-avatar")
  end
    
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
