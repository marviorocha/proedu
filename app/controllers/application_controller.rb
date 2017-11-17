class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  layout :layout_by_resource

  private

  def layout_by_resource

  if user_signed_in? == false
    "login"
  else
    "application"
  end
  end

  protect_from_forgery with: :exception

end
