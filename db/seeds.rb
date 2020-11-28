require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts "deleting all items, categories & sub categories"

Item.delete_all
SubCategory.delete_all
Category.delete_all

puts "all instances have been deleleted"

# Seed Categories and Sub Categories
puts "creating categories and sub categories"

file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1606416678/2udgf2utcts992dudf717zy0tpaf.jpg')
trucks = Category.new(name: "Trucks")
trucks.photo.attach(io: file, filename: 'trucks.png', content_type: 'image/png')
trucks.save!

  vacational = SubCategory.create(name: "Vacational", category: Category.last)
  highway_tractors = SubCategory.create(name: "Highway Tractors", category: Category.last)
  cab_and_chassis = SubCategory.create(name: "Cab and Chassis", category: Category.last)

puts "created category #1 and sub categories"

file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1606585180/truck-2920533_1920_mk8hpf.jpg')
trailers = Category.new(name: "Trailers")
trailers.photo.attach(io: file, filename: 'trailers.png', content_type: 'image/png')
trailers.save!

  forestry = SubCategory.create(name: "Forestry", category: Category.last)
  flatbeds = SubCategory.create(name: "Flatbeds", category: Category.last)
  vans = SubCategory.create(name: "Vans", category: Category.last)

puts "created category #2 and sub categories"

file = URI.open('https://images.pexels.com/photos/2523921/pexels-photo-2523921.jpeg?cs=srgb&dl=pexels-denniz-futalan-2523921.jpg&fm=jpg')
equipment = Category.new(name: "Equipment")
equipment.photo.attach(io: file, filename: 'equipment.png', content_type: 'image/png')
equipment.save!

  construction = SubCategory.create(name: "Construction", category: Category.last)
  agriculture = SubCategory.create(name: "Agriculture", category: Category.last)

puts "created category #3 and sub categories"

file = URI.open('https://images.unsplash.com/photo-1429772011165-0c2e054367b8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1650&q=80')
new_parts = Category.new(name: "Parts")
new_parts.photo.attach(io: file, filename: 'new_parts.png', content_type: 'image/png')
new_parts.save!

  engine_parts = SubCategory.create(name: "Engine parts", category: Category.last)
  fuel_and_hydraulic = SubCategory.create(name: "Fuel and Hydraulic tanks", category: Category.last)
  gauges = SubCategory.create(name: "Gauges", category: Category.last)

puts "created category #4 and sub categories"

file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1606584784/IMG_0663_sf9wbc.jpg')
attachments = Category.new(name: "Attachments")
attachments.photo.attach(io: file, filename: 'attachments.png', content_type: 'image/png')
attachments.save!

  truck = SubCategory.create(name: "Truck", category: Category.last)
  equipment = SubCategory.create(name: "Equipment", category: Category.last)


puts "created category #5 and sub categories"


file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1606567690/tkmkc9lwl3j5nfcsgvxfir6ix6tc.jpg')
misc = Category.new(name: "Misc")
misc.photo.attach(io: file, filename: 'misc.png', content_type: 'image/png')
misc.save!

puts "created category #6 and sub categories"

puts "all categories and sub categories have been created"

