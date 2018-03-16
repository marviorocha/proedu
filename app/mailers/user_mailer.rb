class UserMailer < ApplicationMailer
  default from: "marviorocha@gmail.com"
  layout 'mailer'

  def welcome_mail(user)
  @user = user
  @url = new_user_session_url
  mail(to: @user, subject: "Bem-vindo #{@user.name} - ProEdu")
  end

  #send notifcation user to mail
  def new_publish(user)
  @user = user
  mail(to: @user.email, subject: "#{@user.name} Aula Disponível - ProEdu")
  end



end
