class Content < ApplicationRecord

belongs_to :curse
has_many :comments, dependent: :destroy 

 
end
