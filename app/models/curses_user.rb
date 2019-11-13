class CursesUser < ApplicationRecord
  belongs_to :curse
  belongs_to :user
 
end
