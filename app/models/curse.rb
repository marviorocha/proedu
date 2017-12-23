class Curse < ApplicationRecord

validates :title, :descricao, presence: true
mount_uploader :picture, PictureUploader
end
