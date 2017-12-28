class Curse < ApplicationRecord

has_many :categories



validates :title, :descricao, presence: true
mount_uploader :picture, PictureUploader
end
