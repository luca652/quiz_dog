# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

user = User.create!(email: 'gd@dini.com', password: "123456")

quizmaster_photo = URI.open("https://res.cloudinary.com/da0yktrei/image/upload/v1696583946/development/jtlpnvw28bpdg0puxoio5le0csga.png")
quizmaster = Quizmaster.create!(name: "Kate", user_id: user.id, profile: "Placeholder text for host. Amazing at quizmastering and really good fun!")
quizmaster.photo.attach(io: quizmaster_photo, filename: "kate.png", content_type: "image/png")
quizmaster.save!


pub_time = DateTime.new(2023, 10, 13, 20, 00, 0)
pub_photo = URI.open("https://res.cloudinary.com/da0yktrei/image/upload/v1692627940/development/onrtfbpplzeulk9v21o7ehjzmlcc.jpg")
pub = Venue.new(name: "La Sorrento", address: "18 Camberwell Green, London SE5 7AA", time: pub_time,
                     phone_number: "020 7703 5246", user_id: user.id, day_of_the_week: "Wednesday", quizmaster_id: quizmaster.id)
pub.photo.attach(io: pub_photo, filename: "Sorrento.png", content_type: "image/png")
pub.save!
