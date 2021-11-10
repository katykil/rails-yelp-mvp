# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

@restaurants = Restaurant.create([{ name: 'Belgo Centraal', address: 'Oxford Circus, London', phone_number: '07123456789', category: 'belgian' },
                                 { name: "Otto's", address: 'Richmond, London', phone_number: '07123456789', category: 'french' },
                                 { name: 'Shackfuyu', address: 'Soho, London', phone_number: '07123456789', category: 'japanese' },
                                 { name: 'Pizza Pilgrims', address: 'Shoreditch, London', phone_number: '07123456789', category: 'italian' },
                                 { name: 'Orient', address: 'Bermondsey, London', phone_number: '07123456789', category: 'chinese' }])

puts 'Finished!'
