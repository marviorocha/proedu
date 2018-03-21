class Curse < ApplicationRecord

has_many :categories
has_and_belongs_to_many :user

validates :title, :descricao, presence: true
mount_uploader :picture, PictureUploader


end
