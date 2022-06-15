# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating admin"

  User.create(
                      name: "admin admin",
                      email: "admin@admin.fr",
                      password: "123456",
                      role: "admin",
                      address: "72 Rue de la Merci",
                      city: "Bordeaux",
                      phone: "0606060606" )
puts "Admin signed up"

puts "Creating officine"

  User.create(
                      name: "marc officine",
                      email: "officine@officine.fr",
                      password: "123456",
                      role: "officine",
                      address: "72 Rue de la Merci",
                      city: "Bordeaux",
                      phone: "0606060606" )
puts "Officine signed up"

puts "Creating technicien"

  User.create(
                      name: "brice technicien",
                      email: "technicien@technicien.fr",
                      password: "123456",
                      role: "technicien",
                      address: "72 Rue de la Merci",
                      city: "Bordeaux",
                      phone: "0606060606" )
puts "Technicien signed up"
