# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.destroy_all
Album.destroy_all

rock = Genre.create(name: "Rock")
jazz = Genre.create(name: "Jazz")
country = Genre.create(name: "Country")

Album.create(title: "Appetite For Destruction", artist: "Guns N' Roses", image_url: "https://images-na.ssl-images-amazon.com/images/I/91ksS-ioRpL._SX466_.jpg", genre_id: rock.id)