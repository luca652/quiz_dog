# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ENV['SKIP_GEOCODE'] = 'true'

def attach_image_from_asset(record, field, image_path)
  file = File.open(Rails.root.join('app', 'assets', 'images', image_path))
  record.send(field).attach(io: file, filename: File.basename(image_path))
  record.save!
ensure
  file.close if file
end


# Clear existing data
puts "Clearing database..."
Gig.destroy_all
Venue.destroy_all
Quizmaster.destroy_all
# User.destroy_all

user = User.create!(
  email: 'admin@test.com',
  password: ENV['ADMIN_PASSWORD']
)


# Create venues
puts "Creating venues..."

venues_data = [
  {
    name: "The Anchor",
    address: "34 Park St, London SE1 9EF",
    phone_number: "020 7407 1577",
    latitude: 51.50693175,
    longitude: -0.09312117164932551,
    time: Time.new(2000, 1, 1, 19, 0, 0, "+00:00"),
    day_of_the_week: "Monday"
  },
  {
    name: "The Selkirk",
    address: "60 Selkirk Rd, London SW17 0ES",
    phone_number: "020 8672 6235",
    time: Time.new(2000, 1, 1, 19, 30, 0, "+00:00"),
    day_of_the_week: "Tuesday",
    latitude: 51.430366899999996,
    longitude: -0.16945214838772954
  },
  {
    name: "The Island",
    address: "123 College Rd, London NW10 5HA",
    phone_number: "020 8960 0693",
    time: Time.new(2000, 1, 1, 19, 0, 0, "+00:00"),
    day_of_the_week: "Tuesday",
    latitude: 51.53524915,
    longitude: -0.22653437693417156
  },
  {
    name: "Knowles of Norwood",
    address: "44-46 Ebury Bridge Rd, London SW1W 8PZ",
    phone_number: "020 7881 0768",
    time: Time.new(2000, 1, 1, 19, 0, 0, "+00:00"),
    day_of_the_week: "Monday",
    latitude: 51.48973895,
    longitude: -0.15043788490072268
  }
]

venues_data.each_with_index do |venue_data, index|
  venue = Venue.new(venue_data.merge(user: user))
  attach_image_from_asset(venue, :photo, "venues/#{index + 1}.png")
  venue.save!(validate: false)
  puts "Created #{venue.name}"
end

puts "Finished creating venues!"

# Create quizmasters
puts "Creating quizmasters..."

quizmasters_data = [
  {
    name: "Joe",
    record: "Low by David Bowie",
    fact: "New Mexico was called New Mexico before Mexico was called Mexico",
    breed: "Jack Russell"
  },
  {
    name: "Cara",
    record: "Jagged Little Pill by Alanis Morrisette",
    fact: "Bonobos live in groups led by females and the community maintain peace via sexual relations",
    breed: "Cocker Spaniel"
  },
  {
    name: "Jeni",
    record: "All Mod Cons by the Jam",
    fact: "Guyana is the only English speaking country in South America.",
    breed: "Cockapoo"
  },
  {
    name: "Will",
    record: "Petro Dragonic Apocalypse",
    fact: "The origin of the Jack O'Lantern might have come from a person called Stingy Jack who use a hollowed out turnip as a lantern",
    breed: "Alaskan Malamute"
  },
  {
    name: "Elise",
    record: "Waka Waka (This Time for Africa) by Shakira",
    fact: "You can see your nose all the time, but your brain blocks it out",
    breed: "Old English Sheepdog"
  },
  {
    name: "Taz",
    record: "Imaginary Appalachia by Colter Wall",
    fact: "Sharks have been around longer than Saturn's rings",
    breed: "Labrador"
  },
  {
    name: "Dan",
    record: "Carrie and Lowell by Sufjan Stevens",
    fact: "Mafia boss Vincente Gigante managed to avoid prosecution for three decades by feigning insanity, wandering Greenwich Village in pyjamas muttering to himself",
    breed: "Cats"
  },
  {
    name: "Niamh",
    record: "Kiss Me by Sixpence None the Richer",
    fact: "It's likely that Issac Newton invented the cat flap.",
    breed: "Basset Hound"
  },
  {
    name: "Angela",
    record: "Young Hearts Run Free by Candi Staton",
    fact: "Angela has performed on stage with Sir Ian McKellen...a very nice chap!",
    breed: "Boxer"
  }
]

quizmasters_data.each_with_index do |quizmaster_data, index|
  quizmaster = Quizmaster.new(quizmaster_data.merge(user: user))
  attach_image_from_asset(quizmaster, :photo, "quizmasters/#{index + 1}.png")
  puts "Created #{quizmaster.name}"
end

puts "Finished creating quizmasters!"
