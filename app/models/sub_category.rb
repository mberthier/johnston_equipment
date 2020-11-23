class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :items
  validates :name, uniqueness: true
  validates :name, inclusion: { in: ["Forestry", "Flatbeds", "Vans", "Vocational","Highway tractors", "Cab and Chassis", "Construction", "Agriculture", "Engine parts", "Fuel and Hydraulic", "Tanks and Accessories", "Gauges", "Truck", "Equipment"] }
end
