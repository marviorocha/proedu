module DeviseHelper

  def devise_notification!

      if flash
        render html:'<div class="alert alert-danger" >'.html_safe + flash["alert"] +'</div>'.html_safe
      else
         render html:'<div class="alert alert-success">'.html_safe + flash["notice"]  +'</div>'.html_safe
      end
  end


end
