class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :messager
  has_many :progress, -> { where(progress: true) }
  has_and_belongs_to_many :curse


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 def name_with_initial
         "#{name} #{lastname.first}."
 end


after_create :send_email_welcome

 def send_email_welcome

   UserMailer.welcome_mail(self).deliver_now

 end

end
