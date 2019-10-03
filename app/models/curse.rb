class Curse < ApplicationRecord

has_many :categories

has_one_attached :picture

belongs_to :category

has_many :contents, dependent: :destroy

has_and_belongs_to_many :user

validates :title, :descricao, presence: true, uniqueness: true 


end
