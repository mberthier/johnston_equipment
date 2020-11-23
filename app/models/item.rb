class Item < ApplicationRecord
  belongs_to :category
  belongs_to :sub_category, optional: true
  validates :title, :description, :year, :price, :brand, :category, presence: true
end
