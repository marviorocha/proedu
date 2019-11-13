class ContentsUser < ApplicationRecord
  belongs_to :content
  belongs_to :user
  validates :curse_id, uniqueness: true
end
