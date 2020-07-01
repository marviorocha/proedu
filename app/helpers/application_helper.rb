module ApplicationHelper

 def full_name
     current_user.fname + ' ' +  current_user.lname
 end

 def user_type
    
 
    current_user.admin ? t('admin') : 
    current_user.teacher ? t('teacher') :
    current_user.student ? t('student') : ''
 end
 


end
