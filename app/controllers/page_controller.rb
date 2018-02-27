class PageController < ApplicationController

def index
  @user = current_user
  UserMailer.welcome_mail(@user).deliver_now
end

end
