class UserMailer < ApplicationMailer
  default from: "marviorocha@gmail.com"
  layout 'mailer'

  def welcome_mail(user)
  @user = user
  @url = new_user_session_url
  mail(to: "showbiz@showbiz.mus.br", subject: "Bem-vindo #{@user.name} - ProEdu")
  end

end
