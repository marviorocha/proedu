class Content < ApplicationRecord

has_rich_text :body    
has_many :progress, -> { where(progress: true) }

belongs_to :curse

has_one_attached :picture
 
scope :unpublished, ->{where("publish_on >= ?", Time.zone.now)}
 


# scope :publish,   ->  (user) { where("publish_on > ?", user) if user.present? }
# scope :unpublish, ->  (user) { where("publish_on >= ?", user) if user.present? }
# scope :days_lock, ->  (days) { where("publish_on > ?", days) if days.present? }
# scope :licao, ->(curse) { where("curse_id = ?", curse) if curse.present?  }


# list the picture the curse_id
# validates :title, :body, presence: true
# validates :title, length: {in: 5..280 }
# validates :days, numericality: { only_integer: true }

# scan url to show youtube or vimeo





end
