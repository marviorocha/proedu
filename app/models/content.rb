class Content < ApplicationRecord

has_many :curses
belongs_to :curse



# list the picture the curse_id
validates :title, :body, presence: true
validates :title, length: {in: 5..280 }

# scan url to show youtube or vimeo

 



end
