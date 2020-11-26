class Item < ApplicationRecord
  has_many_attached :photos
  belongs_to :category
  belongs_to :sub_category, optional: true
  validates :title, :description, :year, :price, :brand, :category, :photos, presence: true
  # validates :sub_category, inclusion: { in: ["Forestry", "Flatbeds", "Vans", "Vocational","Highway tractors", "Cab and Chassis", "Construction", "Agriculture", "Engine parts", "Fuel and Hydraulic", "Tanks and Accessories", "Gauges", "Truck", "Equipment"] }
  # validates :category, inclusion: { in: ["Trucks", "Trailers", "Equipment", "Attachments", "Parts", "Misc"] }
end
