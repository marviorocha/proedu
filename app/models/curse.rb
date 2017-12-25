class Curse < ApplicationRecord

has_and_belongs_to_many :categories

validates :title, :descricao, presence: true
mount_uploader :picture, PictureUploader
end
