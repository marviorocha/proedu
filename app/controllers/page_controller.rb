class PageController < ApplicationController
include CursesHelper
def index

  @user = current_user
  @user_total = User.all
  @curses = current_user.curse

# include help to board curse
  board
  #UserMailer.welcome_mail(@user).deliver_now
end

end
