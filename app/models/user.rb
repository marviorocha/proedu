class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :messager
  has_many :progress, -> { where(progress: true) }
  has_and_belongs_to_many :curse


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 ROLES = %i[superadmin_role teacher_role studant_role]

# after_create :send_email_welcome

#  def send_email_welcome

#    UserMailer.welcome_mail(self).deliver_now

#  end

end
