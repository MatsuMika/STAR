class Product < ApplicationRecord
	belongs_to :category
	attachment :image

  validates :name, presence: true
  validates :introduction, presence: true
  validates :price, presence: true
  validates :image, presence: true
end
