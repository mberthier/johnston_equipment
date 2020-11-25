class Category < ApplicationRecord
  has_one_attached :photo
  has_many :sub_categories
  has_many :items
  validates :name, presence: true
  validates :name, uniqueness: true
end
