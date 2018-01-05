class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :messager
  has_many :content
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 def name_with_initial
         "#{name} #{lastname.first}."
  end

end
