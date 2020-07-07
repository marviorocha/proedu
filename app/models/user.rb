class User < ApplicationRecord

  # Association for User Model
  has_many :enrollments
  has_many :curses, through: :enrollments 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



# Define show dashbaord teacher stats
  def self.user_total

    User.where(student: true).count

  end

  def self.teacher_total

    User.where(teacher: true).count
    
  end
  

end
