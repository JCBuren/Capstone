# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Creating users..."
10.times{User.create(name: Faker::Name.name, password: Faker::Verb.base, email:Faker::Internet.email, username: Faker::Verb.base, favorite_animal: Faker::Creature::Animal.name)}

puts "Creating pets..."

Pet.create(
    animal_type: "Dog",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/1d959f52c8d931b4ae2d39a6d490c416.png",
    breed: "Austrailian Cattle Dog/Mix",
    age: "1 Year 10 Months",
    gender: "Male",
    available: true,
    adoption_fee: 95
)

Pet.create(
    animal_type: "Dog",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/14644cd0b0ed3e73f9bc278fc76bb325.png",
    breed: "German Shepperd/Mix",
    age: "3 Years 1 Month",
    gender: "Male",
    available: true,
    adoption_fee: 95
)

Pet.create(
    animal_type: "Dog",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/b51f2b986497d295185077c2ea23b3f9.png",
    breed: "English Springer/Mix",
    age: "2 Years 7 Months",
    gender: "Male",
    available: true,
    adoption_fee: 85
)

Pet.create(
    animal_type: "Dog",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/bd432d3ea50c2d684f0b8c7fe3d61582.png",
    breed: "Great Pyrenees/Mix",
    age: "4 Months",
    gender: "Male",
    available: true,
    adoption_fee: 95
)

Pet.create(
    animal_type: "Dog",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/01e4b85b0986a8495c924099c5c01bd3.png",
    breed: "Corgi",
    age: "4 Months",
    gender: "Male",
    available: true,
    adoption_fee: 105
)

Pet.create(
    animal_type: "Dog",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/fe44a4c5853e4f5747ce1664fe02d669.png",
    breed: "Jack Russell Terrier/Mix",
    age: "3 Months",
    gender: "Male",
    available: true,
    adoption_fee: 85
)

Pet.create(
    animal_type: "Dog",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/78298c0605b8fb0d7cb0a1c770b92a34.png",
    breed: "Pomeranian/Mix",
    age: "5 Years",
    gender: "Male",
    available: true,
    adoption_fee: 75
)

Pet.create(
    animal_type: "Dog",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/659265886f87167f5a4b5e440376388a.png",
    breed: "Mixed Breed",
    age: "1 Year 2 Months",
    gender: "Male",
    available: true,
    adoption_fee: 65
)

Pet.create(
    animal_type: "Dog",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/4b586aaa0e96545b979226c35c8ecb41.png",
    breed: "Alaskan Malamute/Mix",
    age: "1 Year 2 Months",
    gender: "Male",
    available: true,
    adoption_fee: 65
)

Pet.create(
    animal_type: "Dog",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/7eb17bf5ed3ba776df1de1b86f90d690.png",
    breed: "Labrador Retriever/Chinese Shar-Pei",
    age: "7 Months",
    gender: "Male",
    available: true,
    adoption_fee: 85
)

Pet.create(
    animal_type: "Dog",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/39008e65e3abee7d052eeb7232e7114b.png",
    breed: "Terrier/Mix",
    age: "3 Years 7 Months",
    gender: "Female",
    available: true,
    adoption_fee: 75
)

Pet.create(
    animal_type: "Dog",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/d3ae237a4604f99fb8b9cd3e3d7143d2.png",
    breed: "Austrailian Cattle Dog/Mix",
    age: "1 Year 1 Month",
    gender: "Male",
    available: true,
    adoption_fee: 75
)

Pet.create(
    animal_type: "Cat",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/2317779dd28b312017ab8ad429e1c601.png",
    breed: "Domestic Shorthair/Mix",
    age: "4 Months",
    gender: "Female",
    available: true,
    adoption_fee: 40
)

Pet.create(
    animal_type: "Cat",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/238d9116ee8198588dabe04823ee2650.png",
    breed: "Domestic Longhair/Mix",
    age: "5 Years",
    gender: "Female",
    available: true,
    adoption_fee: 40
)

Pet.create(
    animal_type: "Cat",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/168892b376467d615962a4c376d26e82.png",
    breed: "Domestic Longhair/Mix",
    age: "2 Months",
    gender: "Female",
    available: true,
    adoption_fee: 40
)

Pet.create(
    animal_type: "Cat",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/3e6bc4f5422356a6985d4425d838dbd2.png",
    breed: "Domestic Longhair/Mix",
    age: "5 Years",
    gender: "Male",
    available: true,
    adoption_fee: 30
)

Pet.create(
    animal_type: "Cat",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/efd1401057bb9dc989477457bb3e00c7.png",
    breed: "Domestic Longhair/Mix",
    age: "5 Years",
    gender: "Male",
    available: true,
    adoption_fee: 30
)

Pet.create(
    animal_type: "Cat",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/be2fd9af4b7f2a18b3ee6c8dbc8ae1bf.png",
    breed: "Domestic Shorthair/Mix",
    age: "2 Months",
    gender: "Male",
    available: true,
    adoption_fee: 50
)

Pet.create(
    animal_type: "Cat",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/2193a73b20cec6cf0ce95eb50dddb1da.png",
    breed: "Domestic Shorthair/Mix",
    age: "4 Months",
    gender: "Male",
    available: true,
    adoption_fee: 50
)

Pet.create(
    animal_type: "Cat",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/efd1401057bb9dc989477457bb3e00c7.png",
    breed: "Domestic Longhair/Mix",
    age: "5 Years",
    gender: "Male",
    available: true,
    adoption_fee: 30
)

Pet.create(
    animal_type: "Cat",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/0906aacef3da94ef2d1701c66a9868ac.png",
    breed: "Domestic Longhair/Mix",
    age: "5 Years 6 Months",
    gender: "Female",
    available: true,
    adoption_fee: 30
)

Pet.create(
    animal_type: "Cat",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/5179e3b01582f2d16f94c592b4fa7bda.png",
    breed: "Domestic Shorthair/Mix",
    age: "3 Months",
    gender: "Male",
    available: true,
    adoption_fee: 40
)

Pet.create(
    animal_type: "Cat",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/4d9cab52239e79ea5de87d64a9540cff.png",
    breed: "Domestic Shorthair/Mix",
    age: "1 Year 6 Months",
    gender: "Male",
    available: true,
    adoption_fee: 30
)

Pet.create(
    animal_type: "Cat",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/03d34e4b186f9a38f79bbde4ea39b275.png",
    breed: "Domestic Shorthair/Mix",
    age: "5 Months",
    gender: "Male",
    available: true,
    adoption_fee: 30
)

Pet.create(
    animal_type: "Small Animal",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/97bbd0d0f195ee4e5c2ae0b3ae534dee.png",
    breed: "Guinea Pig",
    age: "2 Years",
    gender: "Male",
    available: true,
    adoption_fee: 10
)

Pet.create(
    animal_type: "Small Animal",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/8e73fa6ebe8ecfd15069581194d12e1b.png",
    breed: "Guinea Pig",
    age: "2 Years",
    gender: "Male",
    available: true,
    adoption_fee: 10
)

Pet.create(
    animal_type: "Small Animal",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/463991425080beda871718654041fc5d.png",
    breed: "Guinea Pig",
    age: "6 Months",
    gender: "Male",
    available: true,
    adoption_fee: 10
)

Pet.create(
    animal_type: "Small Animal",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/6717f72122b09c21b9514412d1c582ab.png",
    breed: "Rabbit",
    age: "1 Year",
    gender: "Male",
    available: true,
    adoption_fee: 20
)

Pet.create(
    animal_type: "Small Animal",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/f389c5d3a8e3fdcfb1a35cf3273d1a3b.png",
    breed: "Rabbit",
    age: "1 Year",
    gender: "Male",
    available: true,
    adoption_fee: 20
)

Pet.create(
    animal_type: "Small Animal",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/2cb82f6a52d9086182086eb70110c77e.png",
    breed: "Turtle",
    age: "14 Years",
    gender: "Female",
    available: true,
    adoption_fee: 20
)

Pet.create(
    animal_type: "Small Animal",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/19ed30ff2906f8efaa46bb66a9fe875f.png",
    breed: "Guinea Pig",
    age: "1 Year",
    gender: "Female",
    available: true,
    adoption_fee: 10
)

Pet.create(
    animal_type: "Small Animal",
    name: Faker::Name.first_name,
    image_url: "https://i.gyazo.com/cfdb8cc2196f3cb9ca6483b947ba0e79.png",
    breed: "Bearded Dragon",
    age: "2 Year",
    gender: "Female",
    available: true,
    adoption_fee: 10
)