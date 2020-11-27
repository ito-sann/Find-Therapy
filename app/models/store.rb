class Store < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :animal
  belongs_to :region

  with_options presence: true do
    validates  :name
    validates  :description
    validates  :address
    validates :image
  end
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy
  has_many :likes,    dependent: :destroy

  validates :animal_id, numericality: { other_than: 1 } 
  validates :region_id, numericality: { other_than: 1 } 
end
