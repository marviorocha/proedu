class Content < ApplicationRecord


validates :title, :body, presence: true
validates :title, length: {in: 5..280 }

end
