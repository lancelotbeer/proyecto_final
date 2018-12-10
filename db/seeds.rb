# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = ["violin", "guitarra", "acordeon"]

Course.destroy_all
a.each do |i|
  Course.create(
    name: i, description: "curso de: #{i}"
  )
end
