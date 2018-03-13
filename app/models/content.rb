class Content < ApplicationRecord

has_many :curses
belongs_to :curse

scope :publish,   ->  (user) { where("publish_on > ?", user) if user.present? }
scope :unpublish, ->  (user) { where("publish_on >= ?", user) if user.present? }
scope :days_lock, ->  (days) { where("publish_on > ?", days) if days.present? }



# list the picture the curse_id
validates :title, :body, presence: true
validates :title, length: {in: 5..280 }

# scan url to show youtube or vimeo





end
