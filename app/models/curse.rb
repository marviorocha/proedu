class Curse < ApplicationRecord

has_many :categories
has_many :contents
has_and_belongs_to_many :user

validates :title, :descricao, presence: true, uniqueness: true 
mount_uploader :picture, PictureUploader


end
