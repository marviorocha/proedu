class User < ApplicationRecord

  # Association for User Model
  has_many :enrollments
  has_many :curses, through: :enrollments 
  has_one_attached :avatar_user
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



# Define show dashbaord teacher stats

  scope :teacher_total, -> { where teacher: 'true' }
  scope :student_total, -> { where student: 'true' }



end
