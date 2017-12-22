class Curse < ApplicationRecord

has_many :content 
mount_uploader :picture, PictureUploader
end
